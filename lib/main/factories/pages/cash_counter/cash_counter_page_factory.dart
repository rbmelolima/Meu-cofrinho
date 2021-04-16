import 'package:flutter/material.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';

import 'cash_counter_presenter_factory.dart';

Widget makeCashCounterPage() {
  return CashCounterPage(presenter: makeGetxCashCounterPresenter());
}
