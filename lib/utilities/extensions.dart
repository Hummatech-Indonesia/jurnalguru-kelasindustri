import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../ui/theme/theme.dart';
import 'formatter.dart';

extension ListX<T> on List<T> {
  List<T> get reversed => this.reversed.toList();
  List<T> get shuffled => this..shuffle();
  List<T> takeRandomN(int n) => shuffled.take(n).toList();
  List<T> takeRandom() => takeRandomN(Random().nextInt(length));
  List<T> copy() => List<T>.from(this);
}

extension BuildContextX on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;
  double get height => screenSize.height;
  double get width => screenSize.width;
  ThemeData get theme => Theme.of(this);
  TextTheme get text => theme.textTheme;
  ColorScheme get color => theme.colorScheme;
}

extension Numx on num {
  Duration get microseconds => Duration(microseconds: toInt());
  Duration get milliseconds => (this * 1000).microseconds;
  Duration get seconds => (this * 1000).milliseconds;
  Duration get minutes => (this * 60).seconds;
  Duration get hours => (this * 60).minutes;
  Duration get days => (this * 24).hours;
  Duration get weeks => (this * 7).days;
  Duration get months => (this * 30).days;
  Duration get years => (this * 365).days;

  SizedBox get heightBox => SizedBox(height: toDouble());
  SizedBox get widthBox => SizedBox(width: toDouble());

  String get asMoney => Formatter.idrFormatter.format(this);
  String get asPercent => "${(this * 100).toInt()}%";
}

extension DateTimeX on DateTime {
  String get asDate => DateFormat.yMMMMEEEEd("id").format(this);
  String get asTime => DateFormat.Hm("id").format(this);
  String get asDateTime =>
      DateFormat("d MMMM yyyy, HH:mm:ss", "id").format(this);
}

enum Weight {
  thin,
  extraLight,
  light,
  regular,
  medium,
  semiBold,
  bold,
  extraBold,
  black,
}

extension WeightX on Weight {
  FontWeight get weight {
    switch (this) {
      case Weight.thin:
        return FontWeight.w100;
      case Weight.extraLight:
        return FontWeight.w200;
      case Weight.light:
        return FontWeight.w300;
      case Weight.regular:
        return FontWeight.w400;
      case Weight.medium:
        return FontWeight.w500;
      case Weight.semiBold:
        return FontWeight.w600;
      case Weight.bold:
        return FontWeight.w700;
      case Weight.extraBold:
        return FontWeight.w800;
      case Weight.black:
        return FontWeight.w900;
    }
  }
}

extension TextStyleX on TextStyle {
  TextStyle weight(Weight weight) => copyWith(
        // https://github.com/material-foundation/flutter-packages/issues/35
        fontFamily: appFont(fontWeight: weight.weight).fontFamily,
      );
  TextStyle size(double size) => copyWith(fontSize: size);
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle letterSpacing(double spacing) => copyWith(letterSpacing: spacing);
  TextStyle height(double height) => copyWith(height: height);
  TextStyle background(Color color) =>
      copyWith(background: Paint()..color = color);
  TextStyle decoration(TextDecoration decoration) =>
      copyWith(decoration: decoration);
  TextStyle decorationColor(Color color) => copyWith(decorationColor: color);
  TextStyle decorationStyle(TextDecorationStyle style) =>
      copyWith(decorationStyle: style);
  TextStyle decorationThickness(double thickness) =>
      copyWith(decorationThickness: thickness);
  TextStyle shadows(List<Shadow> shadows) => copyWith(shadows: shadows);
  TextStyle font(String font) => copyWith(fontFamily: font);

  TextStyle headlineColor() => copyWith(color: ColorPallete.onSurfaceHeadline);
  TextStyle bodyColor() => copyWith(color: ColorPallete.onSurfaceBody);
  TextStyle primaryColor() => copyWith(color: ColorPallete.primary);
  TextStyle onPrimaryColor() => copyWith(color: ColorPallete.onPrimary);
  TextStyle onErrorColor() => copyWith(color: ColorPallete.onError);
  TextStyle errorColor() => copyWith(color: ColorPallete.error);
}
