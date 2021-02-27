
import 'package:flutter/material.dart';
import 'package:flutter_app_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

//REUSABLE_CARD CONST
const activeCardColors = Color(0xff56738C);
const bottomContainerColor = Colors.greenAccent;
const bottomContainerHeight = 80.0;


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        //backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColors,
                    cardChild: IconContent(gender: "Male", cardIcon: FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColors,
                    cardChild: IconContent(gender: "Female", cardIcon: FontAwesomeIcons.venus),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: activeCardColors)
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: activeCardColors)
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColors)
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.all(15),
          ),
        ],
      ),
    );
  }
}


