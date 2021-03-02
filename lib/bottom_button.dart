import 'package:flutter/material.dart';

import 'constants.dart';
import 'result_page.dart';

class BottomButton extends StatelessWidget {

  final String text;
  final Function onTap;

  BottomButton({this.text, this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.all(15),
        child: Center(
            child: Text(text,style: kLargeButtonTextStyle)
        ),
      ),
    );
  }
}

