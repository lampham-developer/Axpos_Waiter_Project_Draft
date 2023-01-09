import 'package:flutter/material.dart';

import 'app_colors.dart';
const fontFamily = 'utm_centur';


const TextTheme appTextTheme = TextTheme(
  headline1: TextStyle(
    fontFamily: fontFamily,
    inherit: true,
    decoration: TextDecoration.none,
    fontSize: 34,
    color: colorText,
    fontWeight: FontWeight.w900,
  ),
  headline2: TextStyle(
    fontFamily: fontFamily,
    inherit: true,
    decoration: TextDecoration.none,
    fontSize: 17,
    color: colorText,
    fontWeight: FontWeight.w900,
  ),
  subtitle1: TextStyle(
    fontFamily: fontFamily,
    inherit: true,
    decoration: TextDecoration.none,
    fontSize: 34,
    color: colorText,
    fontWeight: FontWeight.w900,
  ),
  subtitle2: TextStyle(
    fontFamily: fontFamily,
    inherit: true,
    decoration: TextDecoration.none,
    fontSize: 17,
    color: colorText,
    fontWeight: FontWeight.w900,
  ),
  bodyText1: TextStyle(
    fontFamily: fontFamily,
    inherit: true,
    decoration: TextDecoration.none,
    fontSize: 17,
    color: colorText,
    fontWeight: FontWeight.w400,
  ),
  bodyText2: TextStyle(
    fontFamily: fontFamily,
    inherit: true,
    decoration: TextDecoration.none,
    fontSize: 15,
    color: colorText,
    fontWeight: FontWeight.w400,
  ),
  //footnote
  caption: TextStyle(
    fontFamily: fontFamily,
    decoration: TextDecoration.none,
    fontSize: 10,
    color: colorText,
    fontWeight: FontWeight.w500,
  ),
  button: TextStyle(
    fontFamily: fontFamily,
    inherit: true,
    fontSize: 17,
    color: colorText,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.w400,
  ),
  overline: TextStyle(
      fontFamily: fontFamily,
      inherit: true,
      decoration: TextDecoration.none,
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w300,
      letterSpacing: 0,
      height: 1),
);