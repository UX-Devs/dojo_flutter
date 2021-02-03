import 'package:flutter/material.dart';

class Dessert extends StatelessWidget {
  static String routeName = '/dessert';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dessert"),
      ),
      body: Center(
        child: Image.network(
          "https://images.pexels.com/photos/2373520/pexels-photo-2373520.jpeg?cs=srgb&dl=pexels-jhon-marquez-2373520.jpg&fm=jpg",
          loadingBuilder: (context, child, progress) {
            return progress == null ? child : LinearProgressIndicator();
          },
        ),
      ),
    );
  }
}
