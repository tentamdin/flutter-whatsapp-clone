import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_title.dart';
import 'package:flutter_whatsapp_clone/components/listTile_card.dart';
import 'package:flutter_whatsapp_clone/components/listtile_dense.dart';
import 'package:flutter_whatsapp_clone/components/screen_title.dart';
import 'package:flutter_whatsapp_clone/constants.dart';
import 'Widgets/center_text.dart';

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
                ScreenTitle(title: "Settings"),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                ListTileCard(
                  onTap: () {},
                  title: "Tenzin Tamdin",
                  leadingWiget: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                  ),
                  trailingWiget1: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                    ),
                    onPressed: () {},
                  ),
                  trailingWiget2: Container(),
                  subtitleWidget: Text("Coding and Wandering"),
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
                ...settingList
                    .map((data) {
                      return Column(
                        children: [
                          ListTileDense(
                            leadingWidget: Icon(
                              Icons.stars,
                              color: Theme.of(context).accentColor,
                            ),
                            titleText: data,
                            trailingIconData: Icons.arrow_forward_ios,
                            onTap: () {},
                          ),
                          Divider(
                            height: 0,
                            thickness: 1,
                            indent: settingList.indexOf(data) == 1 ? 0 : 70,
                          ),
                        ],
                      );
                    })
                    .toList()
                    .sublist(0, 2),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                ...settingList
                    .map((data) {
                      return Column(
                        children: [
                          ListTileDense(
                            leadingWidget: Icon(
                              Icons.stars,
                              color: Theme.of(context).accentColor,
                            ),
                            titleText: data,
                            trailingIconData: Icons.arrow_forward_ios,
                            onTap: () {},
                          ),
                          Divider(
                            height: 0,
                            thickness: 1,
                            indent: settingList.indexOf(data) == 6 ? 0 : 70,
                          ),
                        ],
                      );
                    })
                    .toList()
                    .sublist(2, 7),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                ...settingList
                    .map((data) {
                      return Column(
                        children: [
                          ListTileDense(
                            leadingWidget: Icon(
                              Icons.stars,
                              color: Theme.of(context).accentColor,
                            ),
                            titleText: data,
                            trailingIconData: Icons.arrow_forward_ios,
                            onTap: () {},
                          ),
                          Divider(
                            height: 0,
                            thickness: 1,
                            indent: settingList.indexOf(data) == 8 ? 0 : 70,
                          ),
                        ],
                      );
                    })
                    .toList()
                    .sublist(7),
                SizedBox(
                  height: 30,
                ),
                CenterText(
                  label: "from",
                ),
                CenterText(
                  label: "FACEBOOK",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
