import 'package:boilerplate/screens/page1.dart';
import 'package:boilerplate/screens/page2.dart';
import 'package:boilerplate/screens/page3.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  static const String routeName = "/homePage";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
int currentIndex = 0;
var myHome = new MyHomePage();

class _MyHomePageState extends State<MyHomePage> {
  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  List<Widget> pageList = [
    Page1(),
    Page2(),
    Page3(),
  ];
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "homePage",
            icon: Icon(Icons.access_alarm_outlined),
          ),
          BottomNavigationBarItem(
              label: "Cat page",
              icon: Icon(Icons.account_balance_wallet_outlined)),
          BottomNavigationBarItem(
            label: "page3",
            icon: Icon(Icons.add_box_rounded),
          )
        ],
        currentIndex: currentIndex,
        onTap: onTapped,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
