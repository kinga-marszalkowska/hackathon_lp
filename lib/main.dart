
import 'package:flutter/material.dart';
import 'package:projektzpss/models/avatar_model.dart';
import 'package:projektzpss/screens/avatar_painter.dart';
import 'package:projektzpss/utils/custom_icon_button.dart';
import 'package:provider/provider.dart';
import 'package:projektzpss/models/body_part_enum.dart';

void main() {
  runApp(MaterialApp(
    home: ChangeNotifierProvider(
        create: (context) => AvatarModel(), child: HomeScreen()),
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
      body: Row(
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
    );
  }
}
