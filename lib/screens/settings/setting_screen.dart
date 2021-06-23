import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_title.dart';
import 'package:flutter_whatsapp_clone/components/listTile_component.dart';
import 'package:flutter_whatsapp_clone/components/listtile_dense.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _scroll = false;
  ScrollController _controller;

  _scrollListener() {
    if (_controller.offset <= 47) {
      setState(() {
        _scroll = false;
      });
    } else {
      setState(() {
        _scroll = true;
      });
    }
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: _scroll ? Colors.white : Colors.transparent,
          elevation: 0,
          title: _scroll
              ? AppBarTitleText(
                  title: "Settings",
                )
              : AppBarTitleText(
                  title: "",
                )),
      body: SafeArea(
        child: ColoredBox(
          color: Theme.of(context).primaryColor,
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 20,
                  ),
                  child: Text(
                    "Settings",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                ListTileComponent(
                  leadingWidget: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                  ),
                  titleText: "Tenzin Tamdin",
                  trailingIconData: Icons.arrow_forward_ios,
                  secondText: "Conding and Wandering",
                  onTap: () {
                    print("my name");
                  },
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                ListTileDense(
                  leadingWidget: Icon(
                    Icons.stars,
                    color: Theme.of(context).accentColor,
                  ),
                  titleText: "Starred Messages",
                  trailingIconData: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                  indent: 70,
                ),
                ListTileDense(
                  leadingWidget: Icon(
                    Icons.stars,
                    color: Theme.of(context).accentColor,
                  ),
                  titleText: "WhatsApp Web/Destop",
                  trailingIconData: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                ListTileDense(
                  leadingWidget: Icon(
                    Icons.stars,
                    color: Theme.of(context).accentColor,
                  ),
                  titleText: "Account",
                  trailingIconData: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                  indent: 70,
                ),
                ListTileDense(
                  leadingWidget: Icon(
                    Icons.stars,
                    color: Theme.of(context).accentColor,
                  ),
                  titleText: "Chats",
                  trailingIconData: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                  indent: 70,
                ),
                ListTileDense(
                  leadingWidget: Icon(
                    Icons.stars,
                    color: Theme.of(context).accentColor,
                  ),
                  titleText: "Notifications",
                  trailingIconData: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                  indent: 70,
                ),
                ListTileDense(
                  leadingWidget: Icon(
                    Icons.stars,
                    color: Theme.of(context).accentColor,
                  ),
                  titleText: "Payments",
                  trailingIconData: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                  indent: 70,
                ),
                ListTileDense(
                  leadingWidget: Icon(
                    Icons.stars,
                    color: Theme.of(context).accentColor,
                  ),
                  titleText: "Storage and Data",
                  trailingIconData: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                ListTileDense(
                  leadingWidget: Icon(
                    Icons.stars,
                    color: Theme.of(context).accentColor,
                  ),
                  titleText: "Help",
                  trailingIconData: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                  indent: 70,
                ),
                ListTileDense(
                  leadingWidget: Icon(
                    Icons.stars,
                    color: Theme.of(context).accentColor,
                  ),
                  titleText: "Tell a Friend",
                  trailingIconData: Icons.arrow_forward_ios,
                  onTap: () {},
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "from",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "FACEBOOK",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
