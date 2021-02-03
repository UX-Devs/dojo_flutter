import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:dojo_flutter/examples/example_3/theme_playground.dart';
import 'package:flutter/material.dart';

class Example3 extends StatefulWidget {
  static String routeName = "/example3";

  @override
  State<StatefulWidget> createState() => Example3State();
}

class Example3State extends State<Example3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("Beispiel 3"),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ThemePlayground.routeName);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Playground"),
                  Icon(Icons.arrow_right_outlined)
                ],
              ))
        ],
      ),
      body: ListView(
        children: [
          Image.network(
            "https://lh3.googleusercontent.com/k6WO1fd7T40A9JvSVfHqs0CPLFyTEDCecsVGxEDhOaTP0wUTPYOVVkxt60hKxBprgNoMqs8OyKqtlaQ4tDBtQJs-fTcZrpZEjxhUVQ=w1064-v0",
            loadingBuilder: (context, child, progress) {
              return progress == null ? child : LinearProgressIndicator();
            },
          ),
          Image.network(
            "https://lh3.googleusercontent.com/GhGMLbfqPXdUgmnflT52VWNSned4U5jLOpTIXZWEDQfwvZGZC2EI0iO0wKxptigoYW79v2PhIdmjTjWDgfdHF8TzcldhSc9pA4BBLhE=w1064-v0",
            loadingBuilder: (context, child, progress) {
              return progress == null ? child : LinearProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
