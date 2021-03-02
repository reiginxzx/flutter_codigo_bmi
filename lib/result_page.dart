import 'package:flutter/material.dart';
import 'package:flutter_app_bmi/bottom_button.dart';
import 'package:flutter_app_bmi/constants.dart';
import 'package:flutter_app_bmi/input_page.dart';
import 'package:flutter_app_bmi/reusable_card.dart';

class ResultPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage({this.bmiResult, this.resultText, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ResultPage"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Text("Your Result", style: kResultTitle),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColors,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle
                  ),
                  Text(
                    bmiResult,
                    style: kResultNumberTextStyle
                  ),
                  Text(
                    interpretation,
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              text: "RE-CALCULATE",
              onTap: (){
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}
