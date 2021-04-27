import 'package:flutter/material.dart';

class ListTileDense extends StatelessWidget {
  ListTileDense(
      {this.titleText, this.trailingIconData, this.onTap, this.leadingWidget});

  final String titleText;
  final IconData trailingIconData;
  final Function onTap;
  final Widget leadingWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: ListTile(
        leading: leadingWidget,
        title: Text(
          titleText,
          style: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
        trailing: Icon(
          trailingIconData,
        ),
        onTap: onTap,
      ),
    );
  }
}
