import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/breakpoints/breakpoints.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';
import 'package:meu_cofrinho/ui/widgets/widgets.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: ColorAppTheme.backgroundColor),
      backgroundColor: ColorAppTheme.backgroundColor,
      drawer: Drawer(
        semanticLabel: "Menu",
        child: Container(
          color: ColorAppTheme.primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Meu cofrinho",
                      style: TextAppTheme.h3(),
                    ),
                    Text("Versão 1.0.0")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: LimitedWidth(
          max: Breakpoints.maxWidth,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                PiggyAnimation(),
                Space(vertical: 16),
                Text(
                  "Meu cofrinho",
                  style: TextAppTheme.h3(color: Colors.white),
                ),
                Space(vertical: 8),
                Text(
                  "Faça a gestão do seu cofrinho e aproveite nossas outras funcionalidades",
                  style: TextAppTheme.p(color: ColorAppTheme.textColor2),
                ),
                Space(vertical: 32),
                SizedBox(
                  height: 130,
                  child: FeaturesListApp(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
