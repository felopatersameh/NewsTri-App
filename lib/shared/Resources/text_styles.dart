import 'package:flutter/material.dart';


class SizeFontManger {
  static const double s20 = 20.0;
  static const double s24 = 24.0;
  static const double s16 = 16.0;
  static const double s14 = 14.0;
  static const double s12 = 12.0;
}

class WeightFontManger {
  static const FontWeight w400 = FontWeight.w400;
  static const FontWeight w600 = FontWeight.w600;
  static const FontWeight w700 = FontWeight.w700;
  static const FontWeight wB = FontWeight.bold;
}

class FamilyFontManger {
  static const String familyAllApp = 'JosefinSans';
}

TextStyle _getTextStyle(double size, FontWeight weight, Color color) {
  return TextStyle(
    fontSize: size,
    fontFamily: FamilyFontManger.familyAllApp,
    color: color,
    fontWeight: weight,
    overflow: TextOverflow.ellipsis
  );
}

TextStyle getBodyMediumText(Color color) => _getTextStyle(
    SizeFontManger.s20, WeightFontManger.w400, color );

TextStyle getBodySmallText(Color color) => _getTextStyle(
    SizeFontManger.s12, WeightFontManger.w400,color);

TextStyle getSearchText(Color color) => _getTextStyle(
    SizeFontManger.s24, WeightFontManger.w400, color);

TextStyle getAppBarText(Color color) => _getTextStyle(
    SizeFontManger.s24, WeightFontManger.wB, color);


