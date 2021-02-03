import 'package:flutter/material.dart';

class Starter extends StatelessWidget {
  static String routeName = '/starter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vorspeise"),
      ),
      body: Center(
        child: Image.network(
          "https://images.pexels.com/photos/4873700/pexels-photo-4873700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
          loadingBuilder: (context, child, progress) {
            return progress == null ? child : LinearProgressIndicator();
          },
        ),
      ),
    );
  }
}
