import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';

import './coin_counter.dart';

Widget makeCoinCounterPage() {
  return CoinCounterPage(presenter: makeGetxCoinCounterPresenter());
}
