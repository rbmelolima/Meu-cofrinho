import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:meu_cofrinho/ui/widgets/widgets.dart';

class PiggyAnimation extends StatelessWidget {
  const PiggyAnimation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LimitedWidth(
        max: 350,
        child: Lottie.asset('lib/ui/assets/lottie/piggy.json'),
      ),
    );
  }
}