import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_action_btn.dart';
import 'package:flutter_whatsapp_clone/components/appbar_leading.dart';
import 'package:flutter_whatsapp_clone/components/appbar_title.dart';
import 'package:flutter_whatsapp_clone/components/listTile_card.dart';
import 'package:flutter_whatsapp_clone/components/screen_title.dart';
import 'package:flutter_whatsapp_clone/components/search_bar.dart';
import 'package:flutter_whatsapp_clone/models/chat_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  bool _scroll = false;

  ScrollController _controller;

  _scrollListener() {
    if (_controller.offset <= 42) {
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
                title: "Status",
              )
            : AppBarTitleText(
                title: "",
              ),
        leadingWidth: 100,
        leading: AppbarLeading(
          leadingText: "Privacy",
          leadingOnPressed: () {},
        ),
        actions: [
          AppbarActionBtn(
            onPressed: () {},
            iconLabel: null,
          )
        ],
      ),
      body: SafeArea(
        child: ColoredBox(
          color: Theme.of(context).primaryColor,
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScreenTitle(
                  title: "Status",
                ),
                SearchBar(),
                Container(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.1,
                      ),
                      color: Theme.of(context).backgroundColor),
                  child: ListTileCard(
                    onTap: () {},
                    leadingWiget: CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                    ),
                    title: "My Status",
                    trailingWiget1: IconButton(
                      icon: Icon(
                        CupertinoIcons.camera_fill,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () {},
                    ),
                    trailingWiget2: IconButton(
                      icon: Icon(
                        CupertinoIcons.pen,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () {},
                    ),
                    subtitleWidget: Text(
                      "Add to my status",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 20,
                    bottom: 5,
                  ),
                  child: Text(
                    "RECENT UPDATES",
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context)
                          .inputDecorationTheme
                          .hintStyle
                          .color,
                    ),
                  ),
                ),
                Divider(
                  height: 0.0,
                  thickness: 1,
                ),
                ...dummyData.map(
                  (data) {
                    return Column(
                      children: <Widget>[
                        Container(
                          color: Theme.of(context).backgroundColor,
                          child: ListTileCard(
                            onTap: () {},
                            title: data.name,
                            leadingWiget: CircleAvatar(
                              backgroundColor: Theme.of(context).accentColor,
                            ),
                            subtitleWidget: Text(
                              data.storyStatus,
                              style: TextStyle(fontSize: 15.0),
                            ),
                            trailingWiget1: Container(),
                            trailingWiget2: Container(),
                          ),
                        ),
                        Divider(
                          height: 0.0,
                          thickness: 1,
                          indent: 70,
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
