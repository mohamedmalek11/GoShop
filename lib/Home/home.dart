import 'dart:js';

import 'package:flutter/material.dart';
import 'package:goshop/Home/Body.dart';
import 'package:goshop/Home/constants.dart';
import 'package:goshop/Home/navigation_drawe.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      centerTitle: true,
      title: Text('Home Page'),
      actions: [
        IconButton(
            onPressed: () {},
            icon: ImageIcon(AssetImage("assets/icons/shopping-bag.png")))
      ],
      leading: IconButton(
        icon: ImageIcon(AssetImage("assets/icons/menu.png")),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => (navigation_drawer())));
        },
      ),
    );
  }
}
