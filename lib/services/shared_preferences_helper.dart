//todo build shared_preferences_helper

//import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//
//class SharedPreferencesHelper{
//  SharedPreferences _preferences;
//
//
//  SharedPreferencesHelper(){
//    initPreferences();
//  }
//
//  initPreferences () async{
//    _preferences = await SharedPreferences.getInstance();
//    _events = Map<DateTime, List<dynamic>>.from(decodeMap(json.decode(_preferences
//        .getString("events") ?? "{}")));
//    _totalHoursCount = _preferences.getInt('totalHours') ?? 0;
//    notifyListeners();
//  }
//
//  resetPreferences(){
//    _preferences.clear();
//  }
//
//  Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
//    Map<String, dynamic> newMap = {};
//    map.forEach((key, value) {
//      newMap[key.toString()] = map[key];
//    });
//    return newMap;
//  }
//
//  Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
//    Map<DateTime, dynamic> newMap = {};
//    map.forEach((key, value) {
//      newMap[DateTime.parse(key)] = map[key];
//    });
//    return newMap;
//  }
//}