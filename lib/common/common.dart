import 'package:flutter/material.dart';
import 'package:projektzpss/utils/constants.dart';

class ProductTile extends StatefulWidget {
  @required
  final String product;

  const ProductTile({
    Key key, this.product,
  }) : super(key: key);

  @override
  _ProductTileState createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: TextButton(
            onPressed: (){
              setState(() {});
              isSelected = !isSelected;
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.17,
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : kdarkGreen,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.055 ,
                      child: isSelected ? Image.asset("assets/${widget.product}_selected.png") : Image.asset("assets/${widget.product}.png")
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: isSelected ?Image.asset("assets/${widget.product}_title_selected.png"):Image.asset("assets/${widget.product}_title.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: isSelected ?Image.asset("assets/${widget.product}_price_selected.png"):Image.asset("assets/${widget.product}_price.png"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
