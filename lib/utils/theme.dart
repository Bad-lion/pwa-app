import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pwa/utils/exports.dart';

class AppTheme {
  static final TextTheme _TextTheme = TextTheme(
    headline2: kHead2TS,
  );

  static final ThemeData mainTheme = ThemeData(
      accentColor: kdark,
      primaryColor: kprimeryColor,
      secondaryHeaderColor: ksecondaryColor,
      hintColor: kdark,
      errorColor: kdangerColor,
      textTheme: _TextTheme,
      textSelectionTheme: textThemeData,
      inputDecorationTheme: inputDec,
      checkboxTheme: checkBox,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: GoogleFonts.raleway().fontFamily);

  static final TextSelectionThemeData textThemeData = TextSelectionThemeData(
      cursorColor: ksecondaryColor,
      selectionColor: ksecondaryColor,
      selectionHandleColor: ksecondaryColor);

  static final InputDecorationTheme inputDec = InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kdark)),
      hintStyle: kDropdownItemsTS,
      prefixStyle: kDropdownItemsTS);

  static final CheckboxThemeData checkBox = CheckboxThemeData(
    checkColor: MaterialStateProperty.all(Colors.white),
    fillColor: MaterialStateProperty.all(kprimeryColor),
  );
}
