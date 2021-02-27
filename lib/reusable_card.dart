import 'package:flutter/cupertino.dart';

import 'icon_content.dart';


class ReusableCard extends StatelessWidget {

  final Color color;
  final IconContent childCard;
  final Function onPress;

  ReusableCard({@required this.color,@required this.childCard,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12)
        ),
        child: childCard,
      ),
    );
  }
}
