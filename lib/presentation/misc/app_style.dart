import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  AppTextStyle._();
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;
  static FontWeight black = FontWeight.w900;

  static final String? _poppins = GoogleFonts.poppins().fontFamily;

  static TextStyle h1 = TextStyle(
    decoration: TextDecoration.none,
    color: Colors.black,
    fontSize: 22,
    fontWeight: bold,
    height: 1.2,
    fontFamily: _poppins,
  );
  static TextStyle h2 = TextStyle(
    decoration: TextDecoration.none,
    color: Colors.black,
    fontSize: 20,
    fontWeight: bold,
    height: 1.2,
    fontFamily: _poppins,
  );
  static TextStyle h3 = TextStyle(
    decoration: TextDecoration.none,
    color: Colors.black,
    fontSize: 18,
    fontWeight: bold,
    height: 1.2,
    fontFamily: _poppins,
  );
  static TextStyle h4 = TextStyle(
    decoration: TextDecoration.none,
    color: Colors.black,
    fontSize: 16,
    fontWeight: bold,
    height: 1.2,
    fontFamily: _poppins,
  );

  static TextStyle regularStyle = TextStyle(
    decoration: TextDecoration.none,
    color: Colors.black,
    fontSize: 14,
    fontWeight: regular,
    height: 1.2,
    fontFamily: _poppins,
  );
}

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFFf74252);
  static const Color backgroundPage = Color.fromARGB(255, 33, 30, 46);
  static const Color ghostWhite = Color(0xFFF6F8FF);
  static const Color saffron = Color(0xFFF4C950);
  static const Color red = Color(0xffFF0032);
  static const Color grey = Color(0xff929292);
}

class AppPadding {
  static const EdgeInsets horizonal = EdgeInsets.symmetric(horizontal: 16.0);
  static const EdgeInsets normal = EdgeInsets.all(16.0);
}
