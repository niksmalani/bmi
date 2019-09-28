import 'package:flutter/material.dart';

class CardIcons extends StatelessWidget {
  final IconData iconData;
  final String iconLable;

  const CardIcons({Key key, this.iconData, this.iconLable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          iconLable,
          style: TextStyle(fontSize: 18, color: Colors.grey[500]),
        )
      ],
    );
  }
}
