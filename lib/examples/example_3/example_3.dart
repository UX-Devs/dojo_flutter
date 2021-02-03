import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class Example3 extends StatefulWidget {
  static String routeName = "/example3";

  @override
  State<StatefulWidget> createState() => Example3State();
}

class Example3State extends State<Example3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("Beispiel 3")),
      body: Placeholder(),
    );
  }
}
