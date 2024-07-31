import 'package:flutter/material.dart';

abstract class ColorPallete {
  static Color primary = const Color(0xFF124EE7);
  static Color onPrimary = Colors.white;
  static Color secondary = const Color(0xFF5991FF);
  static Color onSecondary = Colors.white;
  static Color tertiary = const Color.fromRGBO(63, 139, 42, 1);
  static Color onTertiary = Colors.white;
  static Color error = const Color.fromRGBO(204, 52, 42, 1);
  static Color onError = Colors.white;

  static Color surface = Colors.white;
  static Color surfaceDim = const Color(0xFFE7E7E7);
  static Color onSurfaceBody = const Color.fromARGB(255, 0, 0, 0);
  static Color onSurfaceHeadline = const Color.fromARGB(255, 0, 0, 0);
  static Color onSurfaceHint = const Color(0xFF8B8B8B);
  static Color shadow = const Color.fromRGBO(43, 47, 64, 0.25);
  static Color divider = const Color.fromRGBO(43, 47, 64, 0.25);

  // custom
  static Color softBorder = Colors.black.withOpacity(0.2);
}
