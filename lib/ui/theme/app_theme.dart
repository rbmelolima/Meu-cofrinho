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
      accentColor: ColorAppTheme.accentColor,
      errorColor: ColorAppTheme.errorColor,
      backgroundColor: ColorAppTheme.backgroundColor,
      buttonColor: ColorAppTheme.buttonColor,
      appBarTheme: AppBarTheme(color: ColorAppTheme.primaryColor),
      scaffoldBackgroundColor: ColorAppTheme.backgroundColor,
      fontFamily: 'Roboto',
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: _textStyles(),
      inputDecorationTheme: _inputStyles(),
      buttonTheme: _buttonStyles(),
      elevatedButtonTheme: _elevatedButtonStyle(),
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
      border: OutlineInputBorder(borderSide: BorderSide()),
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
      colorScheme: ColorScheme.light(
        primary: ColorAppTheme.buttonColor,
      ),
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
