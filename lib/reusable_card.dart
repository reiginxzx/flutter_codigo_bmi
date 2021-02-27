import 'package:flutter/cupertino.dart';

import 'icon_content.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final IconContent cardChild;

  ReusableCard({@required this.color,@required this.cardChild}){}
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12)
      ),
      child: cardChild,
    );
  }
}
