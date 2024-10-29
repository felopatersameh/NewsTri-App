import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'text_styles.dart';

ThemeData themeDark = ThemeData(
  primaryColor: AppColors.colorPrimary,
  scaffoldBackgroundColor: AppColors.colorsDark.colorBackground,
  iconTheme: IconThemeData(color: AppColors.colorsDark.colorIcon),
  dividerColor: AppColors.colorDivider,
  appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.colorsDark.colorStatusBarColor,
          statusBarIconBrightness: Brightness.light),
      actionsIconTheme: IconThemeData(
        color: AppColors.colorsDark.colorIcon,
        size: 30,
      ),
      backgroundColor: AppColors.colorsDark.colorBackground,
      elevation: 0.0,
      titleTextStyle: getAppBarText(Colors.white)),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.colorsDark.colorBackground,
    elevation: 10,
    selectedItemColor: AppColors.colorsDark.colorSelectItems,
    unselectedItemColor: AppColors.colorsDark.colorIcon,
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
  ),
  searchBarTheme: SearchBarThemeData(
      backgroundColor: MaterialStateProperty.all(
          AppColors.colorsDark.colorBackgroundSearchBar),
      elevation: const MaterialStatePropertyAll(5),
      textStyle:  MaterialStatePropertyAll(getSearchText(Colors.white))),
  cardTheme: CardTheme(
      elevation: 1,
      shadowColor: AppColors.colorsDark.colorShadowCard,
      color: AppColors.colorsDark.colorBackgroundCard),
  textTheme:  TextTheme(
    bodyMedium:getBodyMediumText(Colors.white),
    bodySmall : getBodySmallText(Colors.white60),
  ),
);

ThemeData themeLight = ThemeData(
  primaryColor: AppColors.colorPrimary,
  scaffoldBackgroundColor: AppColors.colorsLight.colorBackground,
  iconTheme: IconThemeData(color: AppColors.colorsLight.colorIcon),
  dividerColor: AppColors.colorDivider,
  appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.colorsLight.colorStatusBarColor,
          statusBarIconBrightness: Brightness.dark),
      actionsIconTheme: IconThemeData(
        color: AppColors.colorsLight.colorIcon,
        size: 30,
      ),
      backgroundColor: AppColors.colorsLight.colorBackground,
      elevation: 0.0,
      titleTextStyle: getAppBarText(Colors.black)),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.colorsLight.colorBackground,
    elevation: 20,
    selectedItemColor: AppColors.colorsLight.colorSelectItems,
    unselectedItemColor: AppColors.colorsLight.colorIcon,
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
  ),
  searchBarTheme: SearchBarThemeData(
      backgroundColor:
          MaterialStateProperty.all(AppColors.colorsLight.colorBackground),
      elevation: const MaterialStatePropertyAll(5),
      textStyle:  MaterialStatePropertyAll(
          getSearchText(Colors.black)
      )),
  cardTheme: CardTheme(
      elevation: 1,
      shadowColor: AppColors.colorsLight.colorShadowCard,
      color: AppColors.colorsLight.colorBackgroundCard),
  textTheme:  TextTheme(
    bodyMedium: getBodyMediumText(Colors.black),
    bodySmall : getBodySmallText(Colors.black45),
  ),
);
