import 'package:flutter/material.dart';
import 'package:projektzpss/models/avatar_model.dart';
import 'package:projektzpss/models/body_part_enum.dart';
import 'package:provider/provider.dart';

class CustomChangeColorIconButton extends StatelessWidget {

  final Body body;
  CustomChangeColorIconButton({this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 50,
        color: Colors.blueGrey,
        onPressed: (){
          Provider.of<AvatarModel>(context, listen: false).getVeryRandomColor(body);
        },
      ),
    );
  }
}

class CustomChangeStyleIconButton extends StatelessWidget {

  final Body body;
  CustomChangeStyleIconButton({this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        icon: Icon(Icons.arrow_forward_ios),
        iconSize: 50,
        color: Colors.blueGrey,
        onPressed: (){
          Provider.of<AvatarModel>(context, listen: false).getVeryRandomColor(body);
        },
      ),
    );
  }
}
