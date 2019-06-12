import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'RandomWords.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return new MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "BBBBB is coming",
    //   home: new RandomWords(),
    //   theme: new ThemeData(
    //     primaryColor: Colors.white,
    //   ),
    // );
    return new CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: "B's CupertinoApp Demo",
      home: new MainPage(),
      theme: new CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
    );
  }
}