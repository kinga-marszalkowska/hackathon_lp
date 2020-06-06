
import 'package:flutter/material.dart';
import 'package:projektzpss/models/avatar_model.dart';
import 'package:provider/provider.dart';
import 'package:projektzpss/models/hairstyles.dart';

class AvatarPainter extends CustomPainter{
  Paint _paint;
  double squareSide = 20.0;
  double origin = 10;
  BuildContext context;

  AvatarPainter(BuildContext context){
    _paint = Paint();
    this.context = context;
  }
  @override
  void paint(Canvas canvas, Size size) {



    List<Rect> hairShape = Provider.of<AvatarModel>(context, listen: false).hairstyle;

    List<Rect> skin = [
      //face
      Rect.fromPoints(Offset(origin + squareSide * 7, origin + squareSide * 2), Offset(origin + squareSide * 8, origin +  squareSide * 4)),
      Rect.fromPoints(Offset(origin + squareSide * 1, origin + squareSide * 3), Offset(origin + squareSide * 7, origin +  squareSide * 4)),
      Rect.fromPoints(Offset(origin + squareSide * 1, origin + squareSide * 4), Offset(origin + squareSide * 8, origin +  squareSide * 5)),
      //arms
      Rect.fromPoints(Offset(origin , origin + squareSide * 5), Offset(origin + squareSide * 1, origin +  squareSide * 9)),
      Rect.fromPoints(Offset(origin + squareSide * 8 , origin + squareSide * 5), Offset(origin + squareSide * 9, origin +  squareSide * 9)),

    ];

    List<Rect> eyes = [
      Rect.fromPoints(Offset(origin + squareSide * 2, origin + squareSide * 3), Offset(origin + squareSide * 3, origin +  squareSide * 4)),
      Rect.fromPoints(Offset(origin + squareSide * 6, origin + squareSide * 3), Offset(origin + squareSide * 7, origin +  squareSide * 4)),

    ];
    List<Rect> tShirt = [
      Rect.fromPoints(Offset(origin , origin + squareSide * 5), Offset(origin + squareSide * 9, origin +  squareSide * 6)),
      Rect.fromPoints(Offset(origin + squareSide * 1, origin + squareSide * 6), Offset(origin + squareSide * 8, origin +  squareSide * 9)),
    ];

    List<Rect> legs = [
      Rect.fromPoints(Offset(origin + squareSide * 1, origin + squareSide * 9), Offset(origin + squareSide * 8, origin +  squareSide * 10)),
      Rect.fromPoints(Offset(origin + squareSide * 1, origin + squareSide * 10), Offset(origin + squareSide * 2, origin +  squareSide * 12)),
      Rect.fromPoints(Offset(origin + squareSide * 7, origin + squareSide * 10), Offset(origin + squareSide * 8, origin +  squareSide * 12)),
    ];

    hairShape.forEach((element) {
      _paint.color = Provider.of<AvatarModel>(context, listen: false).hairColor;
      _paint.style= PaintingStyle.fill;
      canvas.drawRect(element, _paint);
    });

    skin.forEach((element) {
      _paint.color = Provider.of<AvatarModel>(context, listen: false).skinColor;
      _paint.style= PaintingStyle.fill;
      canvas.drawRect(element, _paint);
    });

    eyes.forEach((element) {
      _paint.color = Color(0xff80b9bf);
      _paint.style= PaintingStyle.fill;
      canvas.drawRect(element, _paint);
    });

    tShirt.forEach((element) {
      _paint.color = Provider.of<AvatarModel>(context, listen: false).tShirtColor;
      _paint.style= PaintingStyle.fill;
      canvas.drawRect(element, _paint);
    });

    legs.forEach((element) {
      _paint.color = Provider.of<AvatarModel>(context, listen: false).legsColor;
      _paint.style= PaintingStyle.fill;
      canvas.drawRect(element, _paint);
    });



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}