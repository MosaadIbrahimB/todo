import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {




  static Color blackgColor = Color(0xff060e1e);
  Color blackBlue = Color(0xff141922);
  Color greenColor = Color(0xff61e657);
  static Color grayColor = Color(0xffc7c8ca);
  Color grayWhite = Color(0xff383838);
  Color redColor = Color(0xffe33737);
  static Color blueColor = Color(0xff5d9beb);
  static Color greenWhite = Color(0xffdeebda);
  static Color whiteColor = Color(0xffffffff);
  static Color blueColorblackColor = Color(0xff383838);
  static Color blackTransColor = Color(0xffA9A9A9);
  static Color blackColor = Color(0xff363636);

  static ThemeData lightTheme = ThemeData(

    primaryColor: blueColor,




    appBarTheme: AppBarTheme(
      color: blueColor,
    ),
    scaffoldBackgroundColor: greenWhite,
    textTheme: TextTheme(
      //h1
      headline1: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      headline2: TextStyle(fontSize: 16, color: blueColor, fontFamily: "Arial"),
      headline3: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xff303030),
      ),
      headline4: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      headline5: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: blackTransColor,
          fontFamily: "STC"),

     bodyText1: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: blueColor,
          ),
      bodyText2: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),

    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blueColor,
      unselectedItemColor: grayColor,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
