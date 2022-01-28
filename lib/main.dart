import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greengreen_test/screen/result_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '초록초록',
      theme: ThemeData(brightness: Brightness.light),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(children: [
            ResultScreen(),
            Container(
              child: Center(
                child: Text('2 페이지'),
              ),
            ),
            Container(
              child: Center(
                child: Text('3 페이지'),
              ),
            ),
            Container(
              child: Center(
                child: Text('4 페이지'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
