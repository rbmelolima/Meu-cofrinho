import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu cofrinho',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(),
      home: Container(),
    );
  }
}
