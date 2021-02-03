import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class MobilePortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("Beispiel 4")),
      body: Center(
          child: Text(
        "Mobile Portrait",
        style: Theme.of(context).textTheme.headline2,
      )),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add)),
    );
  }
}
