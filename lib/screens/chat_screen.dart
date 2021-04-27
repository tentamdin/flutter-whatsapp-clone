import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_action_btn.dart';
import 'package:flutter_whatsapp_clone/components/appbar_leading.dart';
import 'package:flutter_whatsapp_clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
        elevation: 0,
        title: _scroll
            ? Text(
                "Chats",
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
        leadingWidth: 80,
        leading: AppbarLeading(
          leadingText: "Edit",
          leadingOnPressed: () {},
        ),
        actions: [
          AppbarActionBtn(
            onPressed: () {},
            iconLabel: Icons.edit,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _controller,
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: Text(
                    "Chats",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
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
                                .focusedBorder
                                .borderSide
                                .color),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppbarLeading(
                        leadingText: "Broadcast Lists",
                        leadingOnPressed: () {},
                      ),
                      AppbarLeading(
                        leadingText: "New Group",
                        leadingOnPressed: () {},
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                ),
                ...dummyData.map((data) {
                  return Column(
                    children: <Widget>[
                      Container(
                        color: Theme.of(context).primaryColor,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Theme.of(context).accentColor,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                data.name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                data.time,
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ],
                          ),
                          subtitle: Container(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              data.message,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 0.0,
                        thickness: 1,
                        indent: 70,
                      ),
                    ],
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
