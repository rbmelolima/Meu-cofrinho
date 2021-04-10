import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meu_cofrinho/ui/routes/routes.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Meu cofrinho',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(),
      initialRoute: Routes.home,
      unknownRoute: Routes.unknownRoute(),
      getPages: Routes.allRoutes(),
    );
  }
}
