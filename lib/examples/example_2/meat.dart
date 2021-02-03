import 'package:dojo_flutter/examples/example_2/example_2.dart';
import 'package:dojo_flutter/examples/example_2/side.dart';
import 'package:flutter/material.dart';

class Meat extends StatelessWidget {
  static String routeName = '/meat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fleisch"),
      ),
      body: ListView(
        children: [
          Center(
            child: Image.network(
              "https://images.pexels.com/photos/410648/pexels-photo-410648.jpeg?cs=srgb&dl=pexels-pascal-claivaz-410648.jpg&fm=jpg",
              loadingBuilder: (context, child, progress) {
                return progress == null ? child : LinearProgressIndicator();
              },
            ),
          ),
          MyDojoCard("zeige Beilagen", Side.routeName),
        ],
      ),
    );
  }
}
