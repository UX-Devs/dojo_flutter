import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class TabletPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("Tablet Portrait")),
      body: Center(
          child: Text(
        "Tablet Portrait",
        style: Theme.of(context).textTheme.headline2,
      )),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add)),
    );
  }
}
