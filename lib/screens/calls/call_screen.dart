import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_action_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_whatsapp_clone/components/appbar_leading.dart';
import 'package:flutter_whatsapp_clone/components/listTile_card.dart';
import 'package:flutter_whatsapp_clone/components/screen_title.dart';
import 'package:flutter_whatsapp_clone/components/search_bar.dart';
import 'package:flutter_whatsapp_clone/models/chat_model.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "All / Missed",
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
            iconLabel: CupertinoIcons.phone_badge_plus,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScreenTitle(
                  title: "Calls",
                ),
                SearchBar(),
                ...dummyData.map(
                  (data) {
                    return Column(
                      children: <Widget>[
                        ListTileCard(
                          onTap: () {},
                          leadingWiget: CircleAvatar(
                            backgroundColor: Theme.of(context).accentColor,
                          ),
                          title: data.name,
                          subtitleWidget: Container(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    size: 20,
                                    color: Theme.of(context).iconTheme.color,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    data.callStatus,
                                    style: TextStyle(
                                        color:
                                            Theme.of(context).iconTheme.color,
                                        fontSize: 15.0),
                                  ),
                                ],
                              )),
                          trailingWiget1: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              data.time,
                              style: TextStyle(
                                  // color: Colors.grey.shade900,
                                  fontSize: 14.0),
                            ),
                          ),
                          trailingWiget2: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.info_outline,
                              color: Theme.of(context).accentColor,
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
