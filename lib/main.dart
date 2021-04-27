import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        accentColor: Colors.blue.shade900,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey.shade600,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          prefixStyle: TextStyle(
            color: Colors.grey.shade800,
          ),
          fillColor: Colors.grey.shade300,
          hintStyle: TextStyle(color: Colors.grey.shade800),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        accentColor: Colors.lightBlueAccent,
        backgroundColor: Colors.grey.shade800,
        iconTheme: IconThemeData(color: Colors.grey),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          prefixStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
          fillColor: Colors.grey.withOpacity(0.3),
          hintStyle: TextStyle(color: Colors.grey.shade400),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}
