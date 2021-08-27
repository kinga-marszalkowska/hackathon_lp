import 'package:flutter/material.dart';
import 'package:projektzpss/utils/constants.dart';
import 'package:projektzpss/utils/routing.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kdarkGreen,
        body: GestureDetector(
          onTap: (){
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/done.png"),
          ),
        )
    );
  }
}
