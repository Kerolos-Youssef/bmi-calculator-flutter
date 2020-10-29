import 'package:flutter/material.dart';
import '../constants.dart';

class CardComponents extends StatelessWidget {
  final IconData icon;
  final String text;

  CardComponents({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 85,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: KLabelTextStyle,
        )
      ],
    );
  }
}
