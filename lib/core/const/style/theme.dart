import 'package:flutter/material.dart';

import '../style/color.dart';

const String fSpartan = 'Spartan';
const String fPlayfair = 'Playfair Display';

const double h1Size = 30.0;
const double h2Size = 24.0;
const double h3Size = 20.0;
const double h4Size = 18.0;

const double body1 = 16.0;
const double body2 = 14.0;

final ThemeData tLightFurniture = ThemeData(
  scaffoldBackgroundColor: Colors.transparent,
  textTheme: TextTheme(
    headline1: TextStyle(
      fontFamily: fPlayfair,
      fontWeight: FontWeight.w700,
      fontSize: h1Size,
      color: kBlack,
    ),
    headline2: TextStyle(
      fontFamily: fSpartan,
      fontWeight: FontWeight.w500,
      fontSize: h2Size,
      color: kBlack,
    ),
    bodyText1: TextStyle(
      fontFamily: fSpartan,
      fontWeight: FontWeight.w300,
      color: kBlack,
    ),
  ),
);
