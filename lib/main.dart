import 'package:dojo_flutter/errors/unknown_page.dart';
import 'package:dojo_flutter/examples/example_1/example_1.dart';
import 'package:dojo_flutter/examples/example_2/dessert.dart';
import 'package:dojo_flutter/examples/example_2/example_2.dart';
import 'package:dojo_flutter/examples/example_2/main_dish.dart';
import 'package:dojo_flutter/examples/example_2/meat.dart';
import 'package:dojo_flutter/examples/example_2/side.dart';
import 'package:dojo_flutter/examples/example_2/starter.dart';
import 'package:dojo_flutter/examples/example_3/example_3.dart';
import 'package:dojo_flutter/examples/example_3/theme_playground.dart';
import 'package:dojo_flutter/examples/example_4/example_4.dart';
import 'package:dojo_flutter/examples/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dojo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => Home(),
        Example1.routeName: (context) => Example1(),
        Example2.routeName: (context) => Example2(),
        Example3.routeName: (context) => Example3(),
        Example4.routeName: (context) => Example4(),
        Starter.routeName: (context) => Starter(),
        MainDish.routeName: (context) => MainDish(),
        Meat.routeName: (context) => Meat(),
        Side.routeName: (context) => Side(),
        Dessert.routeName: (context) => Dessert(),
        ThemePlayground.routeName: (context) => ThemePlayground(),
      },
      onUnknownRoute: (route) =>
          MaterialPageRoute(builder: (context) => UnknownPage()),
    );
  }
}
