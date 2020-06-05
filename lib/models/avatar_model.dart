import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projektzpss/models/body_part_enum.dart';
import 'package:projektzpss/models/hairstyles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AvatarModel extends ChangeNotifier{
  Color _hairColor = Color(0xfffcbaff);
  Color _skinColor = Color(0xffab987b);
  Color _tShirtColor = Color(0xff80b9bf);
  Color _legsColor = Color(0xff636a6b);
  SharedPreferences _preferences;

  get hairColor => _hairColor;

  get skinColor => _skinColor;

  get tShirtColor => _tShirtColor;

  get legsColor => _legsColor;

//  initPreferences () async{
//    _preferences = await SharedPreferences.getInstance();
//    _totalHoursCount = _preferences.getInt('totalHours') ?? 0;
//    notifyListeners();
//  }
//
//  resetPreferences(){
//    _preferences.clear();
//  }


  void getVeryRandomColor(Body body){
    final Random _random = Random();

    Color color = Color.fromARGB(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
    switch (body){
      case Body.hair:{
        _hairColor = color;
        print(color.toString());
        notifyListeners();
        break;
      }
      case Body.tShirt:{
        _tShirtColor = color;
        notifyListeners();
        break;
      }
      case Body.skin:{
        _skinColor = color;
        notifyListeners();
        break;
      }
      case Body.legs: {
        _legsColor = color;
        notifyListeners();
        break;
      }
    }


  }


}