import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class Example1 extends StatefulWidget {
  static String routeName = "/example1";

  @override
  State<StatefulWidget> createState() => Example1State();
}

class Example1State extends State<Example1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("Beispiel 1")),
      body: Placeholder(),
    );
  }
}
