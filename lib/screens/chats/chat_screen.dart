import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_action_btn.dart';
import 'package:flutter_whatsapp_clone/components/appbar_leading.dart';
import 'package:flutter_whatsapp_clone/components/appbar_title.dart';
import 'package:flutter_whatsapp_clone/components/screen_title.dart';
import 'package:flutter_whatsapp_clone/components/search_bar.dart';
import 'package:flutter_whatsapp_clone/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _scroll = false;

  ScrollController _controller;

  _scrollListener() {
    if (_controller.offset <= 29) {
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
            ? AppBarTitleText(
                title: "Chats",
              )
            : AppBarTitleText(
                title: "",
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
                ScreenTitle(title: "Chats"),
                SearchBar(),
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
