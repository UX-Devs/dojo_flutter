import 'package:dojo_flutter/examples/example_2/example_2.dart';
import 'package:dojo_flutter/examples/example_2/meat.dart';
import 'package:dojo_flutter/examples/example_2/side.dart';
import 'package:flutter/material.dart';

class MainDish extends StatelessWidget {
  static String routeName = '/mainDish';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hauptspeise"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyDojoCard("Fleisch", Meat.routeName),
            MyDojoCard("Beilagen", Side.routeName),
          ],
        ));
  }
}
