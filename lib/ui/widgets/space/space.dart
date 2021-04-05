import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  final double vertical;

  const Space(this.vertical);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(vertical: vertical / 2));
  }
}
