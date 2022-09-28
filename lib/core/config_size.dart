import 'package:flutter/material.dart';

class Sizeconfig {
  static double? Screenwidth;
  static double? Screenhight;
  static double? defaultSize;
  static Orientation? orientation;
  void init(BuildContext context) {
    Screenwidth = MediaQuery.of(context).size.width;
    Screenhight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    defaultSize = orientation == Orientation.landscape
        ? Screenhight! * 0.24
        : Screenwidth! * 0.24;
  }
}
