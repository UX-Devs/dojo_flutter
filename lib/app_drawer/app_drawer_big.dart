import 'package:dojo_flutter/app_drawer/app_drawer_option.dart';
import 'package:dojo_flutter/examples/example_1/example_1.dart';
import 'package:dojo_flutter/examples/example_2/example_2.dart';
import 'package:dojo_flutter/examples/example_3/example_3.dart';
import 'package:dojo_flutter/examples/example_4/example_4.dart';
import 'package:dojo_flutter/examples/home.dart';
import 'package:flutter/material.dart';

class AppDrawerBig extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppDrawerBigState();
}

class AppDrawerBigState extends State<AppDrawerBig> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Theme.of(context).colorScheme.primary,
            )
          ],
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Column(
          children: [
            SizedBox(height: 16),
            Icon(Icons.person, size: 50, color: Colors.white),
            SizedBox(height: 16),
            Divider(height: 10, thickness: 1, color: Colors.white),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  AppDrawerOption(
                    title: "Home",
                    subTitle: "Flutter Dojo",
                    iconData: Icons.home,
                    routeName: Home.routeName,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 1",
                    subTitle: "Widgets",
                    iconData: Icons.filter_1,
                    routeName: Example1.routeName,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 2",
                    subTitle: "Navigation",
                    iconData: Icons.filter_2,
                    routeName: Example2.routeName,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 3",
                    subTitle: "Themes & Styles",
                    iconData: Icons.filter_3,
                    routeName: Example3.routeName,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 4",
                    subTitle: "Responsive Design",
                    iconData: Icons.filter_4,
                    routeName: Example4.routeName,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
