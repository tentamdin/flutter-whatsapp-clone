import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_action_btn.dart';
import 'package:flutter_whatsapp_clone/components/appbar_leading.dart';
import 'package:flutter_whatsapp_clone/models/chat_model.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Status"),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: Text(
                  "Status",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                child: TextField(
                  decoration: new InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade800,
                    ),
                    hintText: "Search",
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    contentPadding: EdgeInsets.all(0),
                    hintStyle: TextStyle(color: Colors.grey.shade800),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey.shade300),
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
                    color: Colors.white),
                child: ListTile(
                  onTap: () {
                    print("my status");
                  },
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundImage: NetworkImage(dummyData[0].avatarUrl),
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
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            CupertinoIcons.pen,
                            color: Colors.blue.shade900,
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
                          color: Colors.grey.shade800, fontSize: 15.0),
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
                  style: TextStyle(fontSize: 14),
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
                        color: Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(
                            foregroundColor: Theme.of(context).primaryColor,
                            backgroundImage: NetworkImage(data.avatarUrl),
                          ),
                          title: Text(
                            data.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Container(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              data.storyStatus,
                              style: TextStyle(
                                  color: Colors.grey.shade800, fontSize: 15.0),
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
    );
  }
}
