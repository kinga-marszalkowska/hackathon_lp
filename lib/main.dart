
import 'package:flutter/material.dart';
import 'package:projektzpss/models/avatar_model.dart';
import 'package:projektzpss/screens/avatar_painter.dart';
import 'package:projektzpss/screens/calendar_screen.dart';
import 'package:projektzpss/utils/constants.dart';
import 'package:projektzpss/utils/custom_icon_button.dart';
import 'package:provider/provider.dart';
import 'package:projektzpss/models/body_part_enum.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  //initializeDateFormatting().then((_) => runApp(MyApp()));
  runApp(MaterialApp(
    home: ChangeNotifierProvider(
        create: (context) => AvatarModel(), child: HomeScreen(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PSS'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Create your', style: kHeadlineStyle.copyWith(color: Colors.blueGrey),),
                Text('avatar!', style: kHeadlineStyle.copyWith(color: Colors.blueGrey),),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomChangeColorIconButton(body: Body.hair),
                    CustomChangeColorIconButton(body: Body.tShirt),
                    CustomChangeColorIconButton(body: Body.legs),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 200,
                        height: 270,
                        child: Consumer<AvatarModel>(builder: (context, avatarModel, child){
                          return CustomPaint(
                            painter: AvatarPainter(context),
                          );
                        })
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomChangeStyleIconButton(body: Body.hair),
                    CustomChangeStyleIconButton(body: Body.tShirt),
                    CustomChangeStyleIconButton(body: Body.legs),
                  ],
                ),

              ],
            ),
          ),
          Center(
            child: GestureDetector(
              onHorizontalDragDown: (drag){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),

                ),
                height: 130,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.calendar_today, color: Colors.white, size: 50,),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
