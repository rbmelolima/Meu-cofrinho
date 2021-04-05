import 'package:flutter/material.dart';

class UtilsAppTheme {
  static paddingApp() {
    return EdgeInsets.symmetric(horizontal: 12, vertical: 24);
  }

  static roundedButton() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    );
  }
}
