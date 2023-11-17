import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xffb7935f);
  static Color blackColor = Color(0xff242424);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          color: blackColor,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          color: blackColor,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          color: blackColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
            color: primaryColor,
            size: 30,
        ),

        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
        backgroundColor: primaryColor,
      ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: blackColor,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: blackColor,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: blackColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
  );
}
