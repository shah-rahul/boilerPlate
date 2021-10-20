import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2({Key? key, onTapped }) : super(key: key);
  static const String routeName = "/page2";
  
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(tag : 'catimage', child: Image(image:AssetImage('lib/images/cat.jpg'))),
    );
  }
}
