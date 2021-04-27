import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_action_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_whatsapp_clone/components/appbar_leading.dart';
import 'package:flutter_whatsapp_clone/models/chat_model.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("All / Missed"),
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: Text(
                    "Calls",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
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
                              .enabledBorder
                              .borderSide
                              .color,
                        ),
                      ),
                    ),
                  ),
                ),
                // Divider(
                //   height: 10,
                //   thickness: 1,
                // ),
                ...dummyData.map(
                  (data) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Theme.of(context).accentColor,
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                data.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Theme.of(context)
                                      .appBarTheme
                                      .titleTextStyle
                                      .color,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    data.time,
                                    style: TextStyle(
                                        // color: Colors.grey.shade900,
                                        fontSize: 14.0),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.info_outline,
                                    color: Theme.of(context).accentColor,
                                  )
                                ],
                              ),
                            ],
                          ),
                          subtitle: Container(
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
