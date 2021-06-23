import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/home_page.dart';
import 'package:flutter_whatsapp_clone/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes().lightTheme,
      darkTheme: Themes().dartTheme,
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}
