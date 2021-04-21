import 'package:flutter/material.dart';

class AppbarLeading extends StatelessWidget {
  AppbarLeading({this.leadingText, this.leadingOnPressed});
  final String leadingText;
  final Function leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20),
      child: TextButton(
        child: Text(leadingText),
        style: TextButton.styleFrom(
          primary: Colors.blue.shade900,
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        onPressed: leadingOnPressed,
      ),
    );
  }
}
