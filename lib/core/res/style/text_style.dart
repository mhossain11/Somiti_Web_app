import 'package:flutter/material.dart';

class AppTextSize {
  static const double h1 = 96;
  static const double h2 = 60;
  static const double h3 = 48;
  static const double h4 = 34;
  static const double h5 = 24;
  static const double h6 = 20;

  static const double subtitle1 = 16;
  static const double subtitle2 = 14;

  static const double body1 = 16;
  static const double body2 = 14;

  static const double button = 14;

  static const double caption = 12;
  static const double overline = 10;
}



/// ======================
/// FONT WEIGHT SYSTEM
/// ======================

class AppFontWeight {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight bold = FontWeight.w700;
}

/// ======================
/// TEXT STYLE SYSTEM
/// ======================

class AppTextStyles {
  static const TextStyle h1 = TextStyle(
    fontSize: AppTextSize.h1,
    fontWeight: AppFontWeight.light,
    letterSpacing: -1.5,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: AppTextSize.h2,
    fontWeight: AppFontWeight.light,
    letterSpacing: -0.5,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: AppTextSize.h3,
    fontWeight: AppFontWeight.regular,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: AppTextSize.h4,
    fontWeight: AppFontWeight.regular,
    letterSpacing: 0.25,
  );

  static const TextStyle h5 = TextStyle(
    fontSize: AppTextSize.h5,
    fontWeight: AppFontWeight.regular,
  );

  static const TextStyle h6 = TextStyle(
    fontSize: AppTextSize.h6,
    fontWeight: AppFontWeight.medium,
    letterSpacing: 0.15,
  );

  static const TextStyle body1 = TextStyle(
    fontSize: AppTextSize.body1,
    fontWeight: AppFontWeight.regular,
    letterSpacing: 0.5,
  );

  static const TextStyle body2 = TextStyle(
    fontSize: AppTextSize.body2,
    fontWeight: AppFontWeight.regular,
    letterSpacing: 0.25,
  );

  static const TextStyle button = TextStyle(
    fontSize: AppTextSize.button,
    fontWeight: AppFontWeight.medium,
    letterSpacing: 1.25,
  );

  static const TextStyle caption = TextStyle(
    fontSize: AppTextSize.caption,
    fontWeight: AppFontWeight.regular,
    letterSpacing: 0.4,
  );
}