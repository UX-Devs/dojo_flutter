import 'package:dojo_flutter/app_drawer/app_drawer_big.dart';
import 'package:dojo_flutter/app_drawer/app_drawer_small.dart';
import 'package:dojo_flutter/examples/example_4/utils/orientation_layout.dart';
import 'package:dojo_flutter/examples/example_4/utils/screen_type_layout.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppDrawerState();
}

class AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: (context) => AppDrawerBig(),
        landscape: (context) => AppDrawerSmall(),
      ),
      tablet: OrientationLayout(
        portrait: (context) => AppDrawerBig(),
        landscape: (context) => AppDrawerBig(),
      ),
    );
  }
}
