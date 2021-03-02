


import 'package:flutter/material.dart';
import 'package:flutter_app_bmi/bottom_button.dart';
import 'package:flutter_app_bmi/calculator_brain.dart';
import 'package:flutter_app_bmi/result_page.dart';
import 'package:flutter_app_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'round_icon_button.dart';

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
  int height=160 ;
  int age=24;
  int weight=50;

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
                    color: selectedGender==Gender.male ? kActiveCardColors :kInactiveCardColors,
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
                    color: selectedGender == Gender.female ? kActiveCardColors : kInactiveCardColors,
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
                    color: kActiveCardColors,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(height.toString(),style: kNumberTextStyle,),
                            Text("cm",style: kLabelTextStyle,)
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 10,
                          max: 200,
                          inactiveColor: Colors.white70,
                          onChanged: (double value){
                            height = value.round();
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColors,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: [
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                age+=1;
                                setState(() {

                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: (){
                                age-=1;
                                setState(() {

                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ),
                Expanded(
                    child: ReusableCard(
                      color: kActiveCardColors,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Text(
                            "WEIGHT",
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                weight.toString(),
                                style: kNumberTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: (){
                                  weight++;
                                  setState(() {

                                  });
                                },
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  weight--;
                                  setState(() {

                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
          BottomButton(
            text: "CALCULATE",
            onTap: (){
              CalculatorBrain calc = new CalculatorBrain(height: height,weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ))
              );
            }
          ),
        ],
      ),
    );
  }
}




