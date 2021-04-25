import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({
    Key key,
    @required this.bgColorDrawer,
  }) : super(key: key);

  final Color bgColorDrawer;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      semanticLabel: "Menu",
      child: Container(
        color: bgColorDrawer,
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
    );
  }
}
