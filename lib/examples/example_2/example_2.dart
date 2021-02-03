import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:dojo_flutter/examples/example_2/dessert.dart';
import 'package:dojo_flutter/examples/example_2/main_dish.dart';
import 'package:dojo_flutter/examples/example_2/starter.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MyDojoCard("Vorspeise", Starter.routeName),
          MyDojoCard("Hauptgang", MainDish.routeName),
          MyDojoCard("Dessert", Dessert.routeName),
        ],
      ),
    );
  }
}

class MyDojoCard extends StatelessWidget {
  final String title;
  final String routeName;

  const MyDojoCard(this.title, this.routeName);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, routeName),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Text(title, style: TextStyle(fontSize: 30)),
          ),
        ),
      ),
    );
  }
}
