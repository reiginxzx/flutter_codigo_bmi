
import 'package:flutter/material.dart';
import 'package:flutter_app_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

//REUSABLE_CARD CONST
const activeCardColors = Color(0xff204e84);
const inactiveCardColors = Color(0xff56738c);
const bottomContainerColor = Colors.greenAccent;
const bottomContainerHeight = 80.0;

enum Gender{
  male,
  female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;


  // Color maleCardColor = inactiveCardColors;
  // Color femaleCardColor= inactiveCardColors;
  //
  // void updateCardColor(Gender gender){
  //   print("$gender");
  //   if(gender==Gender.male){
  //     if(maleCardColor==inactiveCardColors){
  //       maleCardColor=activeCardColors;
  //       femaleCardColor=inactiveCardColors;
  //     }else{
  //       maleCardColor=inactiveCardColors;
  //     }
  //
  //   }
  //   if(gender==Gender.female){
  //     if(femaleCardColor==inactiveCardColors){
  //       femaleCardColor=activeCardColors;
  //       maleCardColor=inactiveCardColors;
  //     }else{
  //       femaleCardColor=inactiveCardColors;
  //     }
  //   }
  //   setState(() {
  //
  //   });
  //
  // }

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
                    onPress: (){
                      selectedGender = Gender.male;
                      print(selectedGender);
                      setState(() {
                      });
                    },
                    color: selectedGender==Gender.male ? activeCardColors :inactiveCardColors,
                    childCard: IconContent(
                        gender: "Male",
                        cardIcon: FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      selectedGender = Gender.female;
                      print(selectedGender);
                      setState(() {
                      });
                    },
                    color: selectedGender == Gender.female ? activeCardColors : inactiveCardColors,
                    childCard: IconContent(gender: "Female", cardIcon: FontAwesomeIcons.venus),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      color: inactiveCardColors
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      color: activeCardColors
                  )
                ),
                Expanded(
                  child: ReusableCard(
                      color: activeCardColors
                  )
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


