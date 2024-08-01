import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_pallete.dart';
import 'input_theme.dart';
import 'theme_constants.dart';

export 'color_pallete.dart';
export 'input_theme.dart';
export 'theme_constants.dart';

TextStyle appFont({
  Paint? background,
  Color? backgroundColor,
  Color? color,
  TextDecoration? decoration,
  Color? decorationColor,
  TextDecorationStyle? decorationStyle,
  double? decorationThickness,
  List<FontFeature>? fontFeatures,
  double? fontSize,
  FontStyle? fontStyle,
  FontWeight? fontWeight,
  Paint? foreground,
  double? height,
  double? letterSpacing,
  Locale? locale,
  List<Shadow>? shadows,
  TextBaseline? textBaseline,
  TextStyle? textStyle,
  double? wordSpacing,
}) {
  return GoogleFonts.roboto(
    background: background,
    backgroundColor: backgroundColor,
    color: color,
    decoration: decoration,
    decorationColor: decorationColor,
    decorationStyle: decorationStyle,
    decorationThickness: decorationThickness,
    fontFeatures: fontFeatures,
    fontSize: fontSize,
    fontStyle: fontStyle,
    fontWeight: fontWeight,
    foreground: foreground,
    height: height,
    letterSpacing: letterSpacing,
    locale: locale,
    shadows: shadows,
    textBaseline: textBaseline,
    textStyle: textStyle,
    wordSpacing: wordSpacing,
  );
}

final textTheme = GoogleFonts.poppinsTextTheme().apply(
  displayColor: ColorPallete.onSurfaceHeadline,
  bodyColor: ColorPallete.onSurfaceBody,
);

final colorScheme = ColorScheme.light(
  primary: ColorPallete.primary,
  onPrimary: ColorPallete.onPrimary,
  secondary: ColorPallete.secondary,
  onSecondary: ColorPallete.onSecondary,
  tertiary: ColorPallete.tertiary,
  onTertiary: ColorPallete.onTertiary,
  error: ColorPallete.error,
  onError: ColorPallete.onError,
  surface: ColorPallete.surface,
  onSurface: ColorPallete.onSurfaceBody,
  surfaceDim: ColorPallete.surfaceDim,
  shadow: ColorPallete.shadow,
);

final dividerTheme = DividerThemeData(
  color: ColorPallete.divider,
  space: ThemeConstants.dividerSpace,
  thickness: ThemeConstants.dividerThickness,
);

final progressIndicatorTheme = ProgressIndicatorThemeData(
  color: ColorPallete.onPrimary,
);

final theme = ThemeData.from(
  textTheme: textTheme,
  colorScheme: colorScheme,
).copyWith(
  inputDecorationTheme: inputDecorationTheme,
  filledButtonTheme: filledButtonTheme,
  dividerTheme: dividerTheme,
  progressIndicatorTheme: progressIndicatorTheme,
);
