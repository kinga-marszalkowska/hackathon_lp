import 'dart:convert';

import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarModel extends ChangeNotifier{
  CalendarController _calendarController;
  Map<DateTime, List> _events;
  int _totalHoursCount = 0;
  DateTime _selectedDay;
  int _hoursCount = 0;

  SharedPreferences _preferences;

  CalendarModel(){
    _calendarController = CalendarController();
    _events = {};
    _selectedDay = DateTime.now();
    initPreferences();

  }

  get calendarController => _calendarController;

  get events => _events;

  get totalHoursCount => _totalHoursCount;

  get hoursCount => _hoursCount;

  initPreferences () async{
    _preferences = await SharedPreferences.getInstance();
    _events = Map<DateTime, List<dynamic>>.from(decodeMap(json.decode(_preferences
        .getString("events") ?? "{}")));
    _totalHoursCount = _preferences.getInt('totalHours') ?? 0;
    notifyListeners();
  }

  resetPreferences(){
    _preferences.clear();
  }

  Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[DateTime.parse(key)] = map[key];
    });
    return newMap;
  }


  void updateHoursCount(int newNumber){
    _hoursCount = newNumber;
    notifyListeners();
  }

  void addEvent(){
    if(_events[_calendarController.selectedDay] != null){
      _events[_calendarController.selectedDay].add('Coding ' + _hoursCount.toString());
      _totalHoursCount += _hoursCount;
    }
    else{
      _events[_calendarController.selectedDay] = ['Coding' + _hoursCount.toString()];
      _totalHoursCount += _hoursCount;
    }
    _preferences.setInt("totalHours", _totalHoursCount);
    _preferences.setString("events", json.encode(encodeMap(_events)));
    notifyListeners();
  }

  void showBottomSheet(BuildContext context){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            child: Container(
              color: Color(0xff757575),
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'How many hours of coding?',
                      textAlign: TextAlign.center,
                    ),
                    NumberPicker.integer(
                      initialValue: 0,
                      minValue: 0,
                      maxValue: 24,
                      onChanged: (newNumber) {
                        updateHoursCount(newNumber);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: RaisedButton(
                        onPressed: () {
                          addEvent();
                          Navigator.pop(context);
                        },
                        color: Colors.deepOrange[400],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.check, color: Colors.white,),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
    notifyListeners();
  }

}