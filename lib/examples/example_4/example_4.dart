import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  static String routeName = "/example4";

  @override
  State<StatefulWidget> createState() => Example4State();
}

class Example4State extends State<Example4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("Beispiel 4")),
      body: Placeholder(),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add)),
    );
  }
}
