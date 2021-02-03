import 'package:dojo_flutter/app_drawer/app_drawer.dart';
import 'package:flutter/material.dart';

class Example1 extends StatefulWidget {
  static String routeName = "/example1";

  @override
  State<StatefulWidget> createState() => Example1State();
}

class Example1State extends State<Example1> {
  int _counter = 0;

  @override
  void initState() {
    _counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(title: Text("Beispiel 1")),
      body: Center(
        child: Text(
          "Counter: $_counter",
          style: TextStyle(fontSize: 40),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.exposure_plus_1, color: Colors.white),
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                }),
            IconButton(
                icon: Icon(Icons.delete, color: Colors.white),
                onPressed: () {
                  setState(() {
                    _counter = 0;
                  });
                }),
            IconButton(
                icon: Icon(Icons.exposure_minus_1, color: Colors.white),
                onPressed: () {
                  setState(() {
                    _counter--;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

class MyDojoButton extends StatelessWidget {
  final IconData iconData;
  final Function() onTap;

  const MyDojoButton({Key key, this.iconData, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(iconData, color: Colors.white),
      onPressed: onTap,
    );
  }
}
