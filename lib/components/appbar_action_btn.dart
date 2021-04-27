import 'package:flutter/material.dart';

class AppbarActionBtn extends StatelessWidget {
  AppbarActionBtn({this.iconLabel, this.onPressed});

  final IconData iconLabel;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: IconButton(
        icon: Icon(
          iconLabel,
          color: Theme.of(context).accentColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
