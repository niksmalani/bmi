import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({@required this.color, this.cardChild, this.press});

  final Color color;
  final Widget cardChild;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}
