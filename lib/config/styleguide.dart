import 'package:barcode_scanner_app/config/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  AppTheme._();

  static const Color appBackgroundColor = Color(0xFFFFF7EC);
  static const Color topBarBackgroundColor = Color(0xFFFFD974);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color unSelectedTabBackgroundColor = Color(0xFF9F988F);
  static const Color subTitleTextColor = Color(0xFF9F988F);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    title: titleLight,
    subtitle1: _subtitleLight,
    button: _buttonLight,
    headline1: headlineLight,
    bodyText1: bodyLight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    title: _titleDark,
    subtitle1: _subTitleDark,
    button: _buttonDark,
    headline1: _headlineDark,
    bodyText1: _bodyDark,
  );

  static final TextStyle headlineLight = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 2 * SizeConfig.textMultiplier,
    fontWeight: FontWeight.bold,
    height: 1.5,
  );

  static final TextStyle bodyLight = GoogleFonts.montserrat(
    fontSize: 1.8 * SizeConfig.textMultiplier,
    color: Colors.black54,
    height: 1.2,
  );

  static final TextStyle bodyLightBold = GoogleFonts.roboto(
    fontSize: 1.65 * SizeConfig.textMultiplier,
    color: Colors.black87,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle titleLight = GoogleFonts.montserrat(
    fontSize: 3.5 * SizeConfig.textMultiplier,
    color: Colors.black87,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle titleLightWeight = GoogleFonts.montserrat(
    fontSize: 3.5 * SizeConfig.textMultiplier,
    color: Colors.black87,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle _subtitleLight = GoogleFonts.montserrat(
    fontSize: 2 * SizeConfig.textMultiplier,
    color: subTitleTextColor,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle _buttonLight = GoogleFonts.montserrat(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _headlineDark = headlineLight.copyWith(color: Colors.black);

  static final TextStyle _bodyDark = bodyLight.copyWith(color: Colors.white);

  static final TextStyle _titleDark = titleLight.copyWith(color: Colors.white);

  static final TextStyle _subTitleDark = _subtitleLight.copyWith(color: Colors.white70);

  static final TextStyle _buttonDark = _buttonLight.copyWith(color: Colors.black);
}