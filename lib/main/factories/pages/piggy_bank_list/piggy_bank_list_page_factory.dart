import 'package:flutter/material.dart';
import 'package:meu_cofrinho/main/factories/factories.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';

Widget makePiggyBankListPage() {
  return PiggyBankListPage(presenter: makeGetxPiggyBankListPresenter());
}
