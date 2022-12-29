import 'package:client_chama/src/themes/colors.dart';
import 'package:flutter/material.dart';

class GlobalTheme {
  ThemeData lightTheme = ThemeData(
    primaryColor: kSecondaryColor,
    scaffoldBackgroundColor: kSecondaryColor,
    appBarTheme: AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: kSecondaryColor),
      toolbarTextStyle: const TextTheme(
        headline6: TextStyle(
          color: kSecondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'Segoe UI',
        ),
      ).bodyText2,
      titleTextStyle: const TextTheme(
        headline6: TextStyle(
          color: kSecondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: 'Segoe UI',
        ),
      ).headline6,
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: kSecondaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Segoe UI',
      ),
      bodyText1: TextStyle(
        color: kPaleGreen,
        fontSize: 16,
        fontWeight: FontWeight.bold,

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
