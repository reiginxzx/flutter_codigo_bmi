import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon,@required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      fillColor: Colors.white38,
      shape: CircleBorder(),
      elevation: 15.0,
      constraints: BoxConstraints.tightFor(
        height: 40.0,
        width: 40.0,
      ),
    );
  }
}