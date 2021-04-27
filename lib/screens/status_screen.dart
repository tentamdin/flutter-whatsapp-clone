import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_action_btn.dart';
import 'package:flutter_whatsapp_clone/components/appbar_leading.dart';
import 'package:flutter_whatsapp_clone/models/chat_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  bool _scroll = false;

  ScrollController _controller;

  _scrollListener() {
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
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
            ? Text(
                "Status",
                style: TextStyle(
                  color: Theme.of(context).appBarTheme.titleTextStyle.color,
                ),
              )
            : Text(
                "",
                style: TextStyle(
                  color: Theme.of(context).appBarTheme.titleTextStyle.color,
                ),
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
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  child: Text(
                    "Status",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                  child: TextField(
                    decoration: new InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Theme.of(context)
                            .inputDecorationTheme
                            .prefixStyle
                            .color,
                      ),
                      hintText: "Search",
                      filled: true,
                      fillColor:
                          Theme.of(context).inputDecorationTheme.fillColor,
                      contentPadding: EdgeInsets.all(0),
                      hintStyle: TextStyle(
                          color: Theme.of(context)
                              .inputDecorationTheme
                              .hintStyle
                              .color),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Theme.of(context)
                              .inputDecorationTheme
                              .enabledBorder
                              .borderSide
                              .color,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Theme.of(context)
                              .inputDecorationTheme
                              .enabledBorder
                              .borderSide
                              .color,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.1,
                      ),
                      color: Theme.of(context).backgroundColor),
                  child: ListTile(
                    onTap: () {
                      print("my status");
                    },
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "My Status",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.camera_fill,
                              color: Theme.of(context).accentColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              CupertinoIcons.pen,
                              color: Theme.of(context).accentColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                    subtitle: Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Add to my status",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
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
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Theme.of(context).accentColor,
                            ),
                            title: Text(
                              data.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Container(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                data.storyStatus,
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                            onTap: () {},
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
