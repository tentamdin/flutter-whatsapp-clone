import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/screens/call_screen.dart';
import 'package:flutter_whatsapp_clone/screens/camera_screen.dart';
import 'package:flutter_whatsapp_clone/screens/chat_screen.dart';
import 'package:flutter_whatsapp_clone/screens/setting_screen.dart';
import 'package:flutter_whatsapp_clone/screens/status_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 3,
      length: 5,
      child: Scaffold(
          body: TabBarView(
            children: [
              StatusScreen(),
              CallScreen(),
              CameraScreen(),
              ChatScreen(),
              SettingScreen()
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: menu(),
            color: Theme.of(context).primaryColor,
          )),
    );
  }
}

Widget menu() {
  return TabBar(
    labelStyle: TextStyle(fontSize: 12),
    labelPadding: EdgeInsets.all(0),
    labelColor: Colors.blue.shade900,
    unselectedLabelColor: Colors.grey.shade700,
    indicatorSize: TabBarIndicatorSize.label,
    indicatorPadding: EdgeInsets.all(5.0),
    indicatorColor: Colors.transparent,
    tabs: [
      Tab(
        text: "Status",
        icon: Icon(CupertinoIcons.arrow_2_circlepath_circle),
        // iconMargin: EdgeInsets.all(0),
      ),
      Tab(
        text: "Calls",
        icon: Icon(CupertinoIcons.phone),
      ),
      Tab(
        text: "Camera",
        icon: Icon(CupertinoIcons.photo_camera),
      ),
      Tab(
        text: "Chats",
        icon: Icon(CupertinoIcons.chat_bubble_2),
      ),
      Tab(
        text: "Settings",
        icon: Icon(CupertinoIcons.settings),
      ),
    ],
  );
}
