import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Text(
          "Flutter Dojo",
          style: TextStyle(fontSize: 90),
        ),
      ),
    );
  }
}
