import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class UnknownPage extends StatefulWidget {
  static String routeName = "/unknownPage";

  @override
  State<StatefulWidget> createState() => UnknownPageState();
}

class UnknownPageState extends State<UnknownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("Error 404")),
      body: Center(
        child: Image.asset(
          'assets/graphics/error_404.png',
        ),
      ),
    );
  }
}
