import 'package:flutter/material.dart';

class Responsive {
  // Device Check
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  // Screen Size
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;


  // Dynamic Width
  static double dynamicWidth(
      BuildContext context,
      double value,
      ) {
    return width(context) * value;
  }

  // Dynamic Height
  static double dynamicHeight(
      BuildContext context,
      double value,
      ) {
    return height(context) * value;
  }

}
