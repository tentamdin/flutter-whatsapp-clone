import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: TextField(
        decoration: new InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).inputDecorationTheme.prefixStyle.color,
          ),
          hintText: "Search",
          filled: true,
          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
          contentPadding: EdgeInsets.all(0),
          hintStyle: TextStyle(
              color: Theme.of(context).inputDecorationTheme.hintStyle.color),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Theme.of(context)
                  .inputDecorationTheme
                  .enabledBorder
                  .borderSide
                  .color,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Theme.of(context)
                  .inputDecorationTheme
                  .enabledBorder
                  .borderSide
                  .color,
            ),
          ),
        ),
      ),
    );
  }
}
