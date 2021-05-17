import 'package:meu_cofrinho/main/factories/factories.dart';
import 'package:meu_cofrinho/presentation/presenters/presenters.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';

PiggyBankListPresenter makeGetxPiggyBankListPresenter() {
  GetxPiggyBankPresenter presenter;
  presenter = GetxPiggyBankPresenter(makeGetListPiggyBank());
  return presenter;
}
