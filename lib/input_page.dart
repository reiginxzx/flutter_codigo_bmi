
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  child: ReusableCard(color: activeCardColors),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColors),
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

class ReusableCard extends StatelessWidget {

  Color color;

  ReusableCard({@required this.color}){}
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(FontAwesomeIcons.venus,size: 40.0),
          SizedBox(height: 10.0),
          Text("Male",)
        ],
      ),
    );
  }
}

