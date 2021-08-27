import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projektzpss/common/common.dart';
import 'package:projektzpss/utils/constants.dart';
import 'package:projektzpss/utils/routing.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/outdoor.jpg"),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
                child: IconButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 40,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: kdarkGreen,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top:40,
                        left: 30),
                    child: Container(
                      height: 40,
                        child: Image.asset("assets/title.png")),
                  ),
                  ProductTile(product: "log",),
                  ProductTile(product: "hammock",),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                            "50 PLN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: IconButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(qrScreenRoute);
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                          color: Colors.white,
                          iconSize: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
