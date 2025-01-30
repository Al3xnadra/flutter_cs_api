import 'package:flutter/material.dart';

class AppStyle {
  static const double paddingS = 10;
  static const double paddingM = 30;
  static const double paddingL = 50;

  static const double radiusL = 20;

  static EdgeInsets get edgeInsetsS =>
      EdgeInsets.symmetric(horizontal: paddingS, vertical: paddingM);
  static EdgeInsets get edgeInsetsM =>
      EdgeInsets.symmetric(horizontal: paddingM, vertical: paddingM);
  static EdgeInsets get edgeInsetsL =>
      EdgeInsets.symmetric(horizontal: paddingL, vertical: paddingL);

  static BorderRadius get borderRadiusL => BorderRadius.circular(radiusL);

  static double getWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static Color getPrimaryColor(BuildContext context) =>
      Theme.of(context).colorScheme.primary;
  static Color getSecondaryColor(BuildContext context) =>
      Theme.of(context).colorScheme.secondary;

  static padding(BuildContext context) => AppStyle.getWidth(context) < 600
      ? AppStyle.edgeInsetsS
      : AppStyle.getWidth(context) < 1200
          ? AppStyle.edgeInsetsM
          : AppStyle.edgeInsetsL;

  static categoryColumn(BuildContext context) =>
      AppStyle.getWidth(context) < 600
          ? 2
          : AppStyle.getWidth(context) < 1200
              ? 4
              : 6;

  static selectColumn(BuildContext context) => AppStyle.getWidth(context) < 600
      ? 2
      : AppStyle.getWidth(context) < 1200
          ? 3
          : 4;

  static imageSize(BuildContext context) => AppStyle.getWidth(context) < 600
      ? 80.0
      : AppStyle.getWidth(context) < 1200
          ? 130.0
          : 130.0;

  static fontSize(BuildContext context) => AppStyle.getWidth(context) < 600
      ? 20.0
      : AppStyle.getWidth(context) < 1200
          ? 35.0
          : 35.0;

  static startPadding(BuildContext context) => AppStyle.getWidth(context) < 600
      ? EdgeInsets.symmetric(vertical: 30, horizontal: 20)
      : AppStyle.getWidth(context) < 1200
          ? EdgeInsets.symmetric(vertical: 30, horizontal: 80)
          : EdgeInsets.symmetric(vertical: 80, horizontal: 150);

  static content(
    BuildContext context,
    Widget mobile,
    Widget tablet,
    Widget desktop,
  ) =>
      AppStyle.getWidth(context) < 600
          ? mobile
          : AppStyle.getWidth(context) < 1200
              ? tablet
              : desktop;
}
