import 'package:get/get.dart';
import 'package:meu_cofrinho/presentation/protocols/protocols.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';

class GetxCoinCounterPresenter implements CoinCounterPresenter {
  final UtilsMoney money;

  GetxCoinCounterPresenter(this.money);

  var _cents05quantity = 0.obs;
  var _cents10quantity = 0.obs;
  var _cents25quantity = 0.obs;
  var _cents50quantity = 0.obs;
  var _real01quantity = 0.obs;

  Stream<int> get cents05quantity => _cents05quantity.stream;
  Stream<int> get cents10quantity => _cents10quantity.stream;
  Stream<int> get cents25quantity => _cents25quantity.stream;
  Stream<int> get cents50quantity => _cents50quantity.stream;
  Stream<int> get real01quantity => _real01quantity.stream;

  int returnQuantity(int value) => value >= 0 ? value : 0;

  void handleCents05quantity(int quantity) => _cents05quantity.value = returnQuantity(quantity);
  void handleCents10quantity(int quantity) => _cents10quantity.value = returnQuantity(quantity);
  void handleCents25quantity(int quantity) => _cents25quantity.value = returnQuantity(quantity);
  void handleCents50quantity(int quantity) => _cents50quantity.value = returnQuantity(quantity);
  void handleReal01quantity(int quantity) => _real01quantity.value = returnQuantity(quantity);

  String getFormattedTotalValue() {
    double total = money.countMoney(_cents05quantity.value, 0.05) + money.countMoney(_cents10quantity.value, 0.10) + money.countMoney(_cents25quantity.value, 0.25) + money.countMoney(_cents50quantity.value, 0.50) + money.countMoney(_real01quantity.value, 1);

    return money.formatMoney(total);
  }

  Map<String, String> getInformationAboutMoney() {
    return {
      "Total em moedas de R\$ 0,05": money.formatMoney(
        money.countMoney(_cents05quantity.value, 0.05),
      ),
      "Total em moedas de R\$ 0,10": money.formatMoney(
        money.countMoney(_cents10quantity.value, 0.10),
      ),
      "Total em moedas de R\$ 0,25": money.formatMoney(
        money.countMoney(_cents25quantity.value, 0.25),
      ),
      "Total em moedas de R\$ 0,50": money.formatMoney(
        money.countMoney(_cents50quantity.value, 0.50),
      ),
      "Total em moedas de R\$ 1,00": money.formatMoney(
        money.countMoney(_real01quantity.value, 1.00),
      ),
    };
  }
}
