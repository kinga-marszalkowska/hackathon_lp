import 'package:flutter/material.dart';
import 'package:projektzpss/utils/constants.dart';
import 'package:photo_view/photo_view.dart';

class TipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: kdarkGreen,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            child: PhotoView(
              imageProvider: AssetImage("assets/tips1.png"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.arrow_back_ios,color: Colors.white,),
              Icon(Icons.circle,color: Colors.white,),
              Icon(Icons.circle,color: Colors.white,),
              Icon(Icons.circle,color: Colors.white,),
              Icon(Icons.circle,color: Colors.white,),
              Icon(Icons.arrow_forward_ios,color: Colors.white,)
            ],
          )
        ],
      ),
    );
  }
}
