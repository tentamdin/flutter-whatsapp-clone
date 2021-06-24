import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  const CenterText({
    Key key,
    this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.grey),
    );
  }
}
