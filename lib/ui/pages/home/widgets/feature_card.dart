import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meu_cofrinho/ui/theme/theme.dart';

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function navigate;

  const FeatureCard({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.navigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: navigate == null ? SystemMouseCursors.forbidden : SystemMouseCursors.click,
      child: GestureDetector(
        onTap: navigate,
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.only(right: 8),
          width: 130,
          decoration: BoxDecoration(
            color: navigate == null ? Colors.grey[350] : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.black),
              Spacer(),
              Text(title, style: TextAppTheme.h5(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
