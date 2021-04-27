import 'package:flutter/material.dart';

class AppbarLeading extends StatelessWidget {
  AppbarLeading({this.leadingText, this.leadingOnPressed});
  final String leadingText;
  final Function leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(leadingText),
      style: TextButton.styleFrom(
        primary: Theme.of(context).accentColor,
        textStyle: TextStyle(
          fontSize: 18,
        ),
      ),
      onPressed: leadingOnPressed,
    );
  }
}
