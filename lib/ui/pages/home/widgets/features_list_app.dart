import 'package:flutter/material.dart';
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
          icon: Icons.monetization_on_outlined,
          navigate: null,
        ),
        FeatureCard(
          title: "Contar moedinhas",
          icon: Icons.monetization_on_outlined,
          navigate: () => Get.toNamed(Routes.coinCounter),
        ),
        FeatureCard(
          title: "Contar notas",
          icon: Icons.monetization_on_outlined,
          navigate: () => {},
        ),
      ],
    );
  }
}
