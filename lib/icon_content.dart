import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//ICON_CONTENT CONST
const labelTextStyle = TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.bold);


class IconContent extends StatelessWidget {
  final String gender;
  final IconData cardIcon;

  IconContent({@required this.gender,@required this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(cardIcon,size: 70.0),
        SizedBox(height: 10.0),
        Text(
          gender,
          style: labelTextStyle,
        )
      ],
    );
  }
}

