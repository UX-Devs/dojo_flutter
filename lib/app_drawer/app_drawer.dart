import 'package:dojo_flutter/app_drawer/app_drawer_option.dart';
import 'package:dojo_flutter/examples/example_1/example_1.dart';
import 'package:dojo_flutter/examples/example_2/example_2.dart';
import 'package:dojo_flutter/examples/example_3/example_3.dart';
import 'package:dojo_flutter/examples/example_4/example_4.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppDrawerState();
}

class AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 200,
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
            Icon(Icons.person, size: 50, color: Colors.white),
            Divider(height: 10, thickness: 1, color: Colors.white),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  AppDrawerOption(
                    title: "Beispiel 1",
                    iconData: Icons.filter_1,
                    routeName: Example1.routeName,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 2",
                    iconData: Icons.filter_2,
                    routeName: Example2.routeName,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 3",
                    iconData: Icons.filter_3,
                    routeName: Example3.routeName,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 4",
                    iconData: Icons.filter_4,
                    routeName: Example4.routeName,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 5",
                    iconData: Icons.filter_5,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 6",
                    iconData: Icons.filter_6,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 7",
                    iconData: Icons.filter_7,
                  ),
                  AppDrawerOption(
                    title: "Beispiel 8",
                    iconData: Icons.filter_8,
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
