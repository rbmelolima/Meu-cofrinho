import 'package:flutter/material.dart';

class TextAppTheme {
  static customTitle(double size, Color color, FontWeight fontWeight) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
    );
  }

  static h1({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w900,
      fontSize: 48,
    );
  }

  static h2({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: 40,
    );
  }

  static h3({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    );
  }

  static h4({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    );
  }

  static h5({Color color = Colors.white}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
  }

  static strong({Color color = Colors.white, double size = 16}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: color,
      fontSize: size,
    );
  }

  static superStrong({Color color = Colors.white, double size = 16}) {
    return TextStyle(
      fontWeight: FontWeight.w900,
      color: color,
      fontSize: size,
    );
  }

  static p({Color color = Colors.white, double size = 16}) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      color: color,
      fontSize: size,
    );
  }

  static appBarTitle() {
    return TextStyle(color: Colors.white);
  }
}
