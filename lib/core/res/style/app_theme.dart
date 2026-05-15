import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme{
  static ThemeData get dark => ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppColor.primaryColor,
      background: AppColor.darkBackgroundColor,
      onBackground: AppColor.gray[100],
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.darkBackgroundColor,
    appBarTheme: AppBarTheme(color: AppColor.gray[900]),
  );
}