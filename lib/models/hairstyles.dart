import 'package:flutter/material.dart';

double squareSide = 20.0;
double origin = 10;

class Hairstyles {
  static List<Rect> longHair = [
    //hair
    //x axis, y axis
    Rect.fromPoints(Offset(origin + 20, origin),
        Offset(origin + 20 + squareSide * 6, origin + squareSide * 1)),
    Rect.fromPoints(Offset(origin, origin + squareSide),
        Offset(origin + squareSide * 8, origin + squareSide * 2)),
    Rect.fromPoints(Offset(origin, origin + squareSide * 2),
        Offset(origin + squareSide * 7, origin + squareSide * 3)),
    Rect.fromPoints(Offset(origin, origin + squareSide * 3),
        Offset(origin + squareSide * 1, origin + squareSide * 5)),
    Rect.fromPoints(Offset(origin + squareSide * 8, origin + squareSide * 2),
        Offset(origin + squareSide * 9, origin + squareSide * 5)),
  ];

  static List<Rect> shortHair = [
    //hair
    //x axis, y axis
    Rect.fromPoints(Offset(origin + 20, origin),
        Offset(origin + 20 + squareSide * 6, origin + squareSide * 1)),
    Rect.fromPoints(Offset(origin, origin + squareSide),
        Offset(origin + squareSide * 8, origin + squareSide * 2)),
    Rect.fromPoints(Offset(origin, origin + squareSide * 2),
        Offset(origin + squareSide * 7, origin + squareSide * 3)),
  ];

  static List<Rect> longHair2 = [
    //hair
    //x axis, y axis
    Rect.fromPoints(Offset(origin + 20, origin),
        Offset(origin + 20 + squareSide * 7, origin + squareSide * 1)),
    Rect.fromPoints(Offset(origin, origin + squareSide),
        Offset(origin + squareSide * 8, origin + squareSide * 2)),
    Rect.fromPoints(Offset(origin, origin + squareSide * 2),
        Offset(origin + squareSide * 7, origin + squareSide * 3)),
    Rect.fromPoints(Offset(origin, origin + squareSide * 3),
        Offset(origin + squareSide * 1, origin + squareSide * 5)),
    Rect.fromPoints(Offset(origin + squareSide * 8, origin + squareSide * 1),
        Offset(origin + squareSide * 9, origin + squareSide * 5)),
  ];

  static List<Rect> shortHair2 = [
    //hair
    //x axis, y axis
    Rect.fromPoints(Offset(origin, origin),
        Offset(origin + 20 + squareSide * 7, origin + squareSide * 1)),
    Rect.fromPoints(Offset(origin, origin + squareSide),
        Offset(origin + squareSide * 8, origin + squareSide * 2)),
    Rect.fromPoints(Offset(origin, origin + squareSide * 2),
        Offset(origin + squareSide * 7, origin + squareSide * 3)),
    Rect.fromPoints(Offset(origin + squareSide * 8, origin),
        Offset(origin + squareSide * 9, origin + squareSide * 3)),
  ];

  List<List<Rect>> hairstyles = [
    longHair,
    longHair2,
    shortHair,
    shortHair2,
  ];
}
