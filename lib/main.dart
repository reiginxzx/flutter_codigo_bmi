import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI CALCULATOR",
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff00796B),
        appBarTheme: AppBarTheme(
          color: Color(0xff112A47),
        ),
        scaffoldBackgroundColor: Color(0xff112A47),
      ),
      // theme: ThemeData(
      //   primaryColor: Color(0xff00796B),
      //   accentColor: Color(0xffFF9800),
      //   scaffoldBackgroundColor:  Color(0xff152025),
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(
      //       color: Colors.white
      //     )
      //   )
      // ),
      home: InputPage(),
    );
  }
}
