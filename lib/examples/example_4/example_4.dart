import 'package:dojo_flutter/examples/example_4/mobile_landscape.dart';
import 'package:dojo_flutter/examples/example_4/mobile_portrait.dart';
import 'package:dojo_flutter/examples/example_4/tablet_landscape.dart';
import 'package:dojo_flutter/examples/example_4/tablet_portrait.dart';
import 'package:dojo_flutter/examples/example_4/utils/orientation_layout.dart';
import 'package:dojo_flutter/examples/example_4/utils/screen_type_layout.dart';
import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  static String routeName = "/example4";

  @override
  State<StatefulWidget> createState() => Example4State();
}

class Example4State extends State<Example4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: (context) => MobilePortrait(),
        landscape: (context) => MobileLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: (context) => TabletPortrait(),
        landscape: (context) => TabletLandscape(),
      ),
    );
  }
}
