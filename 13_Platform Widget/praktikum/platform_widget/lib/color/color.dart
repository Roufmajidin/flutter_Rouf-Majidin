import 'package:flutter/material.dart';

class AppTheme {
  static final Color primaryColor = const Color(0xff6200EE);
  static final Color secondaryColor = const Color(0xff03DAC5);
  static final Color textColor = const Color.fromARGB(255, 248, 248, 248);

  static final ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    backgroundColor: primaryColor,
    // Add other theme properties here
  );
}
