import 'package:flutter/material.dart';

import './coin_counter_presenter.dart';

class CoinCounterPage extends StatelessWidget {
  final CoinCounterPresenter presenter;

  const CoinCounterPage({
    Key key,
    @required this.presenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador de moedinhas"),
      ),
    );
  }
}
