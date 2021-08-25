import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pwa/utils/exports.dart';

class AppTheme {
  static final TextTheme _TextTheme = TextTheme(
    headline2: kHead2TS,
  );

  static final ThemeData mainTheme = ThemeData(
      primaryColor: kprimeryColor,
      secondaryHeaderColor: ksecondaryColor,
      hintColor: kinfoColor,
      errorColor: kdangerColor,
      textTheme: _TextTheme,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: GoogleFonts.raleway().fontFamily);
}
