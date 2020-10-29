import 'package:flutter/material.dart';
import '../constants.dart';

class BottomBotton extends StatelessWidget {
  final Function onTap;
  final String bottonText;

  BottomBotton({@required this.onTap, @required this.bottonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottonText,
            style: KLargeButtonTextStyle,
          ),
        ),
        height: KBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        color: KBottomContainerColor,
      ),
    );
  }
}
