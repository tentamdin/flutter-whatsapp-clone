import 'package:flutter/material.dart';

class AppBarTitleText extends StatelessWidget {
  const AppBarTitleText({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Theme.of(context).appBarTheme.titleTextStyle.color,
      ),
    );
  }
}
