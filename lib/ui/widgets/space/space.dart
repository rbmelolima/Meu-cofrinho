import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  final double vertical;
  final double horizontal;

  const Space({this.vertical = 8, this.horizontal = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: vertical != 0 ? vertical / 2 : 0,
        horizontal: horizontal != 0 ? horizontal / 2 : 0,
      ),
    );
  }
}
