import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class TabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          AppDrawer(),
          Expanded(
              child: Center(
                  child: Text(
            "Tablet Landscape",
            style: Theme.of(context).textTheme.headline2,
          ))),
        ],
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add)),
    );
  }
}
