import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'RandomWords.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BBBBB is coming",
      home: new RandomWords(),
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
    );
    // return new CupertinoApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "B's CupertinoApp Demo",
    //   home: new MainPage(),
    //   theme: new CupertinoThemeData(
    //     primaryColor: CupertinoColors.activeBlue,
    //   ),
    // );
  }
}

class MainPage extends StatelessWidget {
  final tabs = ["视频","我的"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new CupertinoTabScaffold(
      tabBar: new CupertinoTabBar(
        items: [
          new BottomNavigationBarItem(
            title: new Text(tabs[0]),
            icon: new Icon(CupertinoIcons.video_camera),
          ),
          new BottomNavigationBarItem(
            title: new Text(tabs[1]),
            icon: new Icon(CupertinoIcons.person),
          )
        ],
      ),
      tabBuilder: (context, i) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: new Text(tabs[i]),
          ),
          child: Center(
            child: new Text("now in ${tabs[i]}"),
          ),
        );
      }
    );
  }

}

