import 'package:meu_cofrinho/presentation/presenters/presenters.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';
import 'package:meu_cofrinho/utils/money.dart';

CoinCounterPresenter makeGetxCoinCounterPresenter() {
  Money money = new Money();
  return GetxCoinCounterPresenter(money);
}
