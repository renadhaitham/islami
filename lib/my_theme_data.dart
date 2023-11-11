import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: primary,
          onPrimary: Colors.black54,
          secondary: blackColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: primary,
          onBackground: Colors.transparent,
          surface: Colors.blueGrey,
          onSurface: Colors.white),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: blackColor),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w100,
          color: whiteColor,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: blackColor,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: blackColor,
        unselectedItemColor: whiteColor,
        backgroundColor: primary,
      ));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: darkprimary,
          onPrimary: Colors.white,
          secondary: yellowColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: yellowColor,
          onBackground: Colors.transparent,
          surface: Colors.blueGrey,
          onSurface: Colors.black),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: whiteColor),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w100,
          color: yellowColor,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: whiteColor ,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: yellowColor,
        unselectedItemColor: whiteColor,
        backgroundColor: darkprimary,
      ));
  static const Color primary = Color(0xFFB7935F);
  static const Color darkprimary = Color(0xFF0F1424);
  static const Color blackColor = Color(0xFF242424);
  static const Color yellowColor = Color(0xFFFACC1D);
  static const Color whiteColor = Color(0xFFFFFFFF);
}
