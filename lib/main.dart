import 'package:boilerplate/screens/homePage.dart';
import 'package:boilerplate/screens/page1.dart';
import 'package:boilerplate/screens/page2.dart';
import 'package:boilerplate/screens/page3.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'boilerPlate',
      theme: ThemeData.dark(),
      home: MyHomePage(),
      routes: {
        MyHomePage.routeName: (ctx) => MyHomePage(),
        Page1.routeName: (ctx) => Page1(),
        Page2.routeName: (ctx) => Page2(),
        Page3.routeName: (ctx) => Page3(),
      },
    );
  }
}
