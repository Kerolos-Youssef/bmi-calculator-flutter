import 'package:flutter/material.dart';

class RoundIconBotton extends StatelessWidget {
  final IconData icon;
  final Function On_pressed;
  RoundIconBotton({@required this.icon, @required this.On_pressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: On_pressed,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 8,
      child: Icon(icon),
    );
  }
}
