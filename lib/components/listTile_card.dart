import 'package:flutter/material.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({
    Key key,
    this.title,
    this.onTap,
    this.leadingWiget,
    this.trailingWiget1,
    this.trailingWiget2,
    this.subtitleWidget,
  }) : super(key: key);

  final Function onTap;
  final Widget leadingWiget;
  final String title;
  final Widget trailingWiget1;
  final Widget trailingWiget2;
  final Widget subtitleWidget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leadingWiget,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: SizedBox(
        width: MediaQuery.of(context).size.width * 0.30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            trailingWiget1,
            trailingWiget2,
          ],
        ),
      ),
      subtitle: Container(
        padding: const EdgeInsets.only(top: 5.0),
        child: subtitleWidget,
      ),
    );
  }
}
