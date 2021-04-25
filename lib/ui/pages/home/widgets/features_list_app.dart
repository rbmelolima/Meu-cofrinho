import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:meu_cofrinho/ui/routes/routes.dart';

import 'feature_card.dart';

class FeaturesListApp extends StatelessWidget {
  const FeaturesListApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        FeatureCard(
          title: "Meu cofrinho",
          icon: FontAwesomeIcons.piggyBank,
          navigate: null,
        ),
        FeatureCard(
          title: "Contar moedinhas",
          icon: FontAwesomeIcons.coins,
          navigate: () => Get.toNamed(Routes.coinCounter),
        ),
        FeatureCard(
          title: "Contar notas",
          icon: FontAwesomeIcons.wallet,
          navigate: () => Get.toNamed(Routes.cashCounter),
        ),
      ],
    );
  }
}
