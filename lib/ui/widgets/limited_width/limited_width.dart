import 'package:flutter/material.dart';

class LimitedWidth extends StatelessWidget {
  final Widget child;
  final double max;

  const LimitedWidth({
    Key key,
    this.child,
    this.max = 450,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: max),
      child: SizedBox(
        width: double.maxFinite,
        child: child,
      ),
    );
  }
}
