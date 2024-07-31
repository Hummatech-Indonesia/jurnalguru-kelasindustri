import 'package:flutter/material.dart';

abstract class ThemeConstants {
  static final BorderRadius smallRadius = BorderRadius.circular(12);
  static final BorderRadius mediumRadius = BorderRadius.circular(16);
  static final BorderRadius largeRadius = BorderRadius.circular(24);

  static const double buttonHeight = 64;

  static const double defaultPaddingSize = 24;
  static const EdgeInsets defaultPadding = EdgeInsets.all(defaultPaddingSize);
  static const EdgeInsets defaultVerticalPadding =
      EdgeInsets.symmetric(vertical: defaultPaddingSize);
  static const EdgeInsets defaultHorizontalPadding =
      EdgeInsets.symmetric(horizontal: defaultPaddingSize);

  static const double dividerSpace = 32;
  static const double dividerThickness = 1.5;

  static const double elevation = 10;

  static const Duration navigationBarAnimationDuration =
      Duration(milliseconds: 200);
  static const Curve navigationBarAnimationCurve = Curves.easeInOut;
}
