import 'package:boilerplate/screens/page2.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);
  static const String routeName = "/Page1";

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    print(args);
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            setState(() {
              currentIndex = 1;
            });
            Navigator.of(context).pushNamed(Page2.routeName);
          },
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Go to the cat page'),
                SizedBox(height: 20),
                Hero(
                    tag: 'catimage',
                    child: Image(
                        image: AssetImage('lib/images/cat.jpg'), height: 100))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
