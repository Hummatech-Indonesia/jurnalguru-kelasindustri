import 'package:flutter/material.dart';

import '../../utilities/extensions.dart';
import 'theme.dart';

final inputBorder = OutlineInputBorder(
  borderRadius: ThemeConstants.smallRadius,
  borderSide: BorderSide(
    color: ColorPallete.softBorder,
  ),
);

final inputDecorationTheme = InputDecorationTheme(
  border: inputBorder,
  enabledBorder: inputBorder,
  focusedBorder: inputBorder.copyWith(
    borderSide: BorderSide(
      color: ColorPallete.primary,
    ),
  ),
  errorBorder: inputBorder.copyWith(
    borderSide: BorderSide(
      color: ColorPallete.error,
    ),
  ),
  focusedErrorBorder: inputBorder,
  floatingLabelBehavior: FloatingLabelBehavior.never,
);

final filledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    backgroundColor: ColorPallete.primary,
    foregroundColor: ColorPallete.onPrimary,
    minimumSize: const Size.fromHeight(ThemeConstants.buttonHeight),
    padding: EdgeInsets.zero,
    textStyle: textTheme.headlineLarge!.weight(Weight.semiBold),
    shape: const StadiumBorder(),
  ),
);
