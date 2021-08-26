import 'package:flutter/material.dart';
import 'package:projektzpss/screens/LoginScreen.dart';
import 'package:projektzpss/screens/OrderScreen.dart';
import 'screens/Home.dart';
import 'utils/routing.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Views',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Arial",
          textTheme: TextTheme(
              button: TextStyle(color: Colors.white, fontSize: 18.0),
              title: TextStyle(color: Colors.red))),
      initialRoute: homeScreenRoute,
      routes: {
        homeScreenRoute: (_) => Home(),
        orderScreenRoute: (_) => OrderScreen(),
        loginScreenRoute: (_) => LoginScreen(),
      },
    );
  }
}

//
//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:projektzpss/models/avatar_model.dart';
//import 'package:projektzpss/screens/avatar_painter.dart';
//import 'package:projektzpss/screens/calendar_screen.dart';
//import 'package:projektzpss/utils/constants.dart';
//import 'package:projektzpss/utils/custom_icon_button.dart';
//import 'package:provider/provider.dart';
//import 'package:projektzpss/models/body_part_enum.dart';
//import 'package:table_calendar/table_calendar.dart';
//import 'package:webview_flutter/webview_flutter.dart';
//
//void main() {
//  //initializeDateFormatting().then((_) => runApp(MyApp()));
//  runApp(MaterialApp(
//    home: ChangeNotifierProvider(
//        create: (context) => AvatarModel(), child: HomeScreen(),
//    ),
//    debugShowCheckedModeBanner: false,
//    theme: ThemeData(
//      sliderTheme: kSliderTheme,
//    ),
//  ));
//}
//
//
//
//class HomeScreen extends StatefulWidget {
//  @override
//  _HomeScreenState createState() => _HomeScreenState();
//}
//
//class _HomeScreenState extends State<HomeScreen> {
//  final Completer<WebViewController> _controller =
//  Completer<WebViewController>();
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Lasy'),
//        backgroundColor: Colors.blueGrey,
//      ),
//      body: Column(
//        children: [
//          Padding(
//            padding: const EdgeInsets.only(top: 20),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: [
//                Text('Aaaaa', style: kHeadlineStyle.copyWith(color: Colors.blueGrey),),
//              ],
//            ),
//          ),
//          Container(
//            height: 200,
//            width: MediaQuery.of(context).size.width,
//            child: FutureBuilder<WebViewController>(
//              future: _controller.future,
//              builder: (BuildContext context,
//                  AsyncSnapshot<WebViewController> controller){
//                return WebView(
//                  initialUrl: 'https://www.bdl.lasy.gov.pl/portal/mapy',
//                  javascriptMode: JavascriptMode.unrestricted,
//                  onWebViewCreated: (WebViewController webViewController) {
//                    _controller.complete(webViewController);
//                  },
//                  onProgress: (int progress) {
//                    print("WebView is loading (progress : $progress%)");
//                  },
//                  onPageStarted: (String url) {
//                    print('Page started loading: $url');
//                  },
//                  onPageFinished: (String url) {
//                    print('Page finished loading: $url');
//                  },
//                  gestureNavigationEnabled: true,
//                );
//              },
//            ),
//          ),
//          Center(
//            child: GestureDetector(
//              onHorizontalDragDown: (drag){
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => CalendarScreen()),
//                );
//              },
//              child: Container(
//                decoration: BoxDecoration(
//                  color: Colors.blueGrey,
//                  borderRadius: BorderRadius.only(
//                    topRight: Radius.circular(40),
//                    topLeft: Radius.circular(40),
//                  ),
//
//                ),
//                height: 130,
//                width: MediaQuery.of(context).size.width,
//                child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Icon(Icons.calendar_today, color: Colors.white, size: 50,),
//                ),
//              ),
//            ),
//          ),
//
//        ],
//      ),
//    );
//  }
//}
//
//
