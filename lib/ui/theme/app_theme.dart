import 'package:flutter/material.dart';

import 'color_app_theme.dart';
import 'text_app_theme.dart';
import 'utils_app_theme.dart';

class AppTheme {
  static ThemeData theme() {
    return ThemeData(
      primaryColor: ColorAppTheme.primaryColor,
      primaryColorLight: ColorAppTheme.primaryColorLight,
      primaryColorDark: ColorAppTheme.primaryColorDark,
      errorColor: ColorAppTheme.errorColor,
      backgroundColor: ColorAppTheme.backgroundColor,
      // ignore: deprecated_member_use
      buttonColor: ColorAppTheme.buttonColor,
      appBarTheme: AppBarTheme(
        color: ColorAppTheme.backgroundColor,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.white),
        toolbarTextStyle: TextStyle(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
      ),      
      scaffoldBackgroundColor: ColorAppTheme.backgroundColor,
      fontFamily: 'Roboto',
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: _textStyles(),
      inputDecorationTheme: _inputStyles(),
      buttonTheme: _buttonStyles(),
      elevatedButtonTheme: _elevatedButtonStyle(),
      outlinedButtonTheme: _outlinedButtonTheme(), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorAppTheme.accentColor),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      primaryColor: ColorAppTheme.primaryColor,
      primaryColorLight: ColorAppTheme.primaryColorLight,
      primaryColorDark: ColorAppTheme.primaryColorDark,
      errorColor: ColorAppTheme.errorColor,
      backgroundColor: ColorAppThemeDark.backgroundColor,
      // ignore: deprecated_member_use
      buttonColor: ColorAppTheme.buttonColor,
      appBarTheme: AppBarTheme(
        color: ColorAppThemeDark.backgroundColor,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.white),
        toolbarTextStyle: TextStyle(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
      ),
      scaffoldBackgroundColor: ColorAppThemeDark.backgroundColor,
      fontFamily: 'Roboto',
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: _textStyles(),
      inputDecorationTheme: _inputStyles(),
      buttonTheme: _buttonStyles(),
      elevatedButtonTheme: _elevatedButtonStyle(),
      outlinedButtonTheme: _outlinedButtonTheme(), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorAppTheme.accentColor),
    );
  }

  static TextTheme _textStyles() {
    return TextTheme(
      headline1: TextAppTheme.h1(),
      headline2: TextAppTheme.h2(),
      headline3: TextAppTheme.h3(),
      headline4: TextAppTheme.h4(),
      headline5: TextAppTheme.h5(),
      headline6: TextAppTheme.h5(),
      bodyText1: TextAppTheme.p(),
      button: TextAppTheme.strong(size: 18),
    );
  }

  static InputDecorationTheme _inputStyles() {
    return InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(width: 0, style: BorderStyle.none),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[200], width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF299C9C), width: 1),
      ),
    );
  }

  static ButtonThemeData _buttonStyles() {
    return ButtonThemeData(
      colorScheme: ColorScheme.light(primary: ColorAppTheme.buttonColor),
      buttonColor: ColorAppTheme.buttonColor,
      splashColor: ColorAppTheme.buttonColor,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      textTheme: ButtonTextTheme.primary,
      shape: UtilsAppTheme.roundedButton(),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonStyle() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        onPrimary: Colors.white,
        primary: ColorAppTheme.buttonColor,
        shape: UtilsAppTheme.roundedButton(),
        elevation: 0,
      ),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        textStyle: TextAppTheme.strong(size: 18, color: Colors.white),
        elevation: 0,
        onSurface: Colors.white,
        primary: Colors.white,
        side: BorderSide(width: 2, color: Colors.white),
        shape: UtilsAppTheme.roundedButton(),
      ),
    );
  }

  static ButtonStyle elevatedButtonStyle() {
    return ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: ColorAppTheme.accentColor,
    );
  }

  static ButtonStyle elevatedButtonSecondaryStyle() {
    return ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: ColorAppTheme.accentColor,
    );
  }
}
