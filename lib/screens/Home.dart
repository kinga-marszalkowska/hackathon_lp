import 'package:flutter/material.dart';
import 'package:projektzpss/utils/constants.dart';
import 'package:projektzpss/utils/routing.dart';
import '../web_view_container.dart';

class Home extends StatelessWidget {
  final _links = ['https://www.bdl.lasy.gov.pl/portal/mapy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SafeArea(
              child: Stack(
                children:[
                  SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:[
                            //_urlButton(context, 'https://www.bdl.lasy.gov.pl/portal/mapy'),
                            Container(
                              height: 200,
                              width: 200,
                              child: Builder(
                                  builder: (context) => WebViewContainer('https://www.bdl.lasy.gov.pl/portal/mapy')),
                            )
                          ]
                      )),
                ]
              )),
            TextButton(onPressed: (){
              Navigator.of(context).pushNamed(loginScreenRoute);
            }, child: Container(
              child: Text("login"),
              height: 100,
              color: Colors.red,
            )),
            TextButton(onPressed: (){
              Navigator.of(context).pushNamed(orderScreenRoute);
            }, child: Container(
              child: Text("order"),
              height: 100,
              color: Colors.grey,
            ))
          ]
        ));
  }
  Widget _urlButton(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(20.0),
        // ignore: deprecated_member_use
        child: Stack(
          children:[
            FlatButton(
              color: Theme.of(context).primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
              child: Text(url),
              onPressed: () => _handleURLButtonPress(context, url),
            ),
          ]
        ));
  }
  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}