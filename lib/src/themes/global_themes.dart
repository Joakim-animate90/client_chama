import 'package:client_chama/src/themes/colors.dart';
import 'package:flutter/material.dart';

class GlobalTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: kSecondaryColor,
    accentColor: kBlack,
    scaffoldBackgroundColor: kSecondaryColor,
    appBarTheme: const AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      iconTheme: IconThemeData(color: kBlack),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: kBlack,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
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
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: kBlack,
    accentColor: kSecondaryColor,
    scaffoldBackgroundColor: kBlack,
    appBarTheme: const AppBarTheme(
      color: kBlack,
      elevation: 0,
      iconTheme: IconThemeData(color: kSecondaryColor),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: kSecondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
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
  );
}