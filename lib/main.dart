import 'package:dojo_flutter/errors/unknown_page.dart';
import 'package:dojo_flutter/examples/example_1/example_1.dart';
import 'package:dojo_flutter/examples/example_2/example_2.dart';
import 'package:dojo_flutter/examples/example_3/example_3.dart';
import 'package:dojo_flutter/examples/example_4/example_4.dart';
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
      initialRoute: Example1.routeName,
      routes: {
        Example1.routeName: (context) => Example1(),
        Example2.routeName: (context) => Example2(),
        Example3.routeName: (context) => Example3(),
        Example4.routeName: (context) => Example4(),
      },
      onUnknownRoute: (route) =>
          MaterialPageRoute(builder: (context) => UnknownPage()),
    );
  }
}
