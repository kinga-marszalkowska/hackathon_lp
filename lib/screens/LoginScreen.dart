import 'package:flutter/material.dart';
import 'package:projektzpss/utils/constants.dart';
import 'package:projektzpss/utils/routing.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkGreen,
        body: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(homeScreenRoute);
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/login.png"),
          ),
        )
    );
  }
}
