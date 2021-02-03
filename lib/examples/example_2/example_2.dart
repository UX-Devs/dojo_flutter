import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  static String routeName = "/example2";

  @override
  State<StatefulWidget> createState() => Example2State();
}

class Example2State extends State<Example2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("Beispiel 2")),
      body: Placeholder(),
    );
  }
}
