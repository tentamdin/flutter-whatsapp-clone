import "package:flutter/material.dart";
import 'package:flutter_whatsapp_clone/components/appbar_action_btn.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 80,
        leading: AppbarActionBtn(
          onPressed: () {},
          iconLabel: Icons.close_outlined,
        ),
        actions: [
          AppbarActionBtn(
            onPressed: () {},
            iconLabel: Icons.nightlight_round,
          ),
          AppbarActionBtn(
            onPressed: () {},
            iconLabel: Icons.flash_off_outlined,
          )
        ],
      ),
      body: Container(),
    );
  }
}
