import 'package:client_chama/src/themes/colors.dart';
import 'package:flutter/material.dart';

class GlobalTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: kSecondaryColor,
    scaffoldBackgroundColor: kSecondaryColor,
    appBarTheme: AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: kBlack),
      toolbarTextStyle: const TextTheme(
        headline6: TextStyle(
          color: kBlack,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).bodyText2,
      titleTextStyle: const TextTheme(
        headline6: TextStyle(
          color: kBlack,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).headline6,
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: kBlack,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: TextStyle(
        color: kBlack,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kBlack),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: kBlack,
    scaffoldBackgroundColor: kBlack,
    appBarTheme: AppBarTheme(
      color: kBlack,
      elevation: 0,
      iconTheme: const IconThemeData(color: kSecondaryColor),
      toolbarTextStyle: const TextTheme(
        headline6: TextStyle(
          color: kSecondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).bodyText2,
      titleTextStyle: const TextTheme(
        headline6: TextStyle(
          color: kSecondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ).headline6,
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: kSecondaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: TextStyle(
        color: kSecondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kSecondaryColor),
  );
}
