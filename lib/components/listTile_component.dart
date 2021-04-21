import 'package:flutter/material.dart';

class ListTileComponent extends StatelessWidget {
  ListTileComponent(
      {this.titleText,
      this.trailingIconData,
      this.secondText,
      this.onTap,
      this.leadingWidget});

  final String titleText;
  final IconData trailingIconData;
  final String secondText;
  final Function onTap;
  final Widget leadingWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: leadingWidget,
        title: Text(
          titleText,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          trailingIconData,
        ),
        subtitle: Container(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            secondText,
            style: TextStyle(color: Colors.grey.shade800, fontSize: 15.0),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
