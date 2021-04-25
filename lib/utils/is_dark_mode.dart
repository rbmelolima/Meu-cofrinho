import 'package:flutter/material.dart';

bool isDarkMode(BuildContext context) {
  Brightness platformBrightness = MediaQuery.of(context).platformBrightness;
  return platformBrightness == Brightness.dark ? true : false;
}
