import 'package:meu_cofrinho/presentation/presenters/presenters.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';
import 'package:meu_cofrinho/utils/utils.dart';

CashCounterPresenter makeGetxCashCounterPresenter() {
  Money money = new Money();
  return GetxCashCounterPresenter(money);
}
