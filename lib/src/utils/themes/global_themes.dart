import 'package:client_chama/src/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class GlobalTheme {
  ThemeData lightTheme = ThemeData(
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: kBlack),
      hintStyle: TextStyle(color: kGrey, fontFamily: 'Segoe UI'),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kBlack),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kPrimaryColor),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      constraints:  BoxConstraints(
        maxHeight: 40.0,
        maxWidth: 300.0,
      ),



    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        foregroundColor: kSecondaryColor,
        minimumSize: const Size(300.0, 50.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
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
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: 'Segoe UI',
        ),
      ).headline6,
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: kBlack,
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
