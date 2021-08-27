import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projektzpss/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projektzpss/utils/routing.dart';

import '../web_view_container.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              SafeArea(
                  child: Column(
                      children:[
                        SingleChildScrollView(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children:[
                                  Stack(
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.height*0.8,
                                        width: MediaQuery.of(context).size.width,
                                        child: Builder(
                                            builder: (context) => WebViewContainer('https://www.bdl.lasy.gov.pl/portal/mapy')),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              color: kdarkGreen,
                                            ),
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.drag_handle,
                                                color: Colors.white,
                                              ),
                                            ),

                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              color: kdarkGreen,
                                            ),
                                            child: TextButton(
                                              child: Text(
                                                "?",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800
                                                ),
                                              ),

                                            )

                                          ),
                                        ),
                                      )
                                    ]
                                  )
                                ]
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.14,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: kdarkGreen,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                                ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                             Container(
                               height: 35,
                                 width: 35,
                                 child: InkWell(
                                   onTap: (){
                                     Navigator.of(context).pushNamed(tipsScreenRoute);
                                   },
                                     child: Image.asset("assets/compass.png"))),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed(orderScreenRoute);
                                },
                                  child: Container(
                                      height: 80,
                                      width: 80,
                                      child: Image.asset("assets/qr.png"))
                              ),
                              Icon(
                                Icons.payment,
                                color: Colors.white,
                                size: 35,
                              )
                            ],
                          ),
                        ),

                      ]
                  )),
            ]
        ));
  }
}
