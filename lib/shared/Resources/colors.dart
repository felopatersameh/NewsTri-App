import 'package:flutter/material.dart';


class AppColors {
  static const Color colorPrimary = Colors.deepPurpleAccent;
  static  ColorDarkTheme colorsDark =ColorDarkTheme() ;
  static  ColorLightTheme colorsLight =ColorLightTheme() ;
  static  const Color colorDivider =Colors.white ;
}

class ColorDarkTheme {
    Color colorStatusBarColor = Colors.black;
    Color colorBackground = Colors.black;
    Color colorBackgroundSearchBar =Colors.white30 ;
    Color colorBackgroundCard = const Color.fromRGBO(24, 24, 24, 1) ;
    Color colorShadowCard =Colors.black ;
    Color colorIcon =Colors.white ;
    Color colorSelectItems =const Color.fromRGBO(249, 148, 23, 1) ;

}

class ColorLightTheme {
  Color colorStatusBarColor = Colors.white;
  Color colorBackground =Colors.white ;
  Color colorBackgroundSearchBar =Colors.white ;
  Color colorBackgroundCard = Colors.white ;
  Color colorShadowCard =Colors.grey ;
  Color colorIcon =Colors.black ;
  Color colorSelectItems =const Color.fromRGBO(249, 148, 23, 1);
}
