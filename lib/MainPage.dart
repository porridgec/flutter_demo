import 'package:flutter/cupertino.dart';

class MainPage extends StatelessWidget {
  final tabs = ["视频","我的"];
  @override
  Widget build(BuildContext context) {
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
            trailing: (i == 0) ? Icon(CupertinoIcons.add, color: CupertinoColors.black,) : Icon(CupertinoIcons.settings, color: CupertinoColors.black,),
          ),
          child: Center(
            child: new Text("now in ${tabs[i]}"),
          ),
        );
      }
    );
  }

}