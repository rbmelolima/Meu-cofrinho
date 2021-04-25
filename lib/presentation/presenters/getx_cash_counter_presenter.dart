import 'package:get/get.dart';
import 'package:meu_cofrinho/presentation/protocols/protocols.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';

class GetxCashCounterPresenter implements CashCounterPresenter {
  final UtilsMoney money;
  GetxCashCounterPresenter(this.money);

  var _real02quantity = 0.obs;
  var _real05quantity = 0.obs;
  var _real10quantity = 0.obs;
  var _real20quantity = 0.obs;
  var _real50quantity = 0.obs;
  var _real100quantity = 0.obs;
  var _real200quantity = 0.obs;

  Stream<int> get real02quantity => _real02quantity.stream;
  Stream<int> get real05quantity => _real05quantity.stream;
  Stream<int> get real10quantity => _real10quantity.stream;
  Stream<int> get real20quantity => _real20quantity.stream;
  Stream<int> get real50quantity => _real50quantity.stream;
  Stream<int> get real100quantity => _real100quantity.stream;
  Stream<int> get real200quantity => _real200quantity.stream;

  int returnQuantity(int value, int add, bool clean) {
    if (clean) {
      return add;
    } else {
      return value + add < 0 ? 0 : value + add;
    }
  }

  void handleReal02quantity(int quantity, {bool clean = false}) {
    _real02quantity.value = returnQuantity(_real02quantity.value, quantity, clean);
  }

  void handleReal05quantity(int quantity, {bool clean = false}) {
    _real05quantity.value = returnQuantity(_real05quantity.value, quantity, clean);
  }

  void handleReal10quantity(int quantity, {bool clean = false}) {
    _real10quantity.value = returnQuantity(_real10quantity.value, quantity, clean);
  }

  void handleReal20quantity(int quantity, {bool clean = false}) {
    _real20quantity.value = returnQuantity(_real20quantity.value, quantity, clean);
  }

  void handleReal50quantity(int quantity, {bool clean = false}) {
    _real50quantity.value = returnQuantity(_real50quantity.value, quantity, clean);
  }

  void handleReal100quantity(int quantity, {bool clean = false}) {
    _real100quantity.value = returnQuantity(_real100quantity.value, quantity, clean);
  }

  void handleReal200quantity(int quantity, {bool clean = false}) {
    _real200quantity.value = returnQuantity(_real200quantity.value, quantity, clean);
  }

  String getFormattedTotalValue() {
    double total = money.countMoney(_real02quantity.value, 2) + money.countMoney(_real05quantity.value, 5) + money.countMoney(_real10quantity.value, 10) + money.countMoney(_real20quantity.value, 20) + money.countMoney(_real50quantity.value, 50) + money.countMoney(_real100quantity.value, 100) + money.countMoney(_real200quantity.value, 200);

    return money.formatMoney(total);
  }

  Map<String, String> getInformationAboutMoney() {
    return {
      "Total em notas de R\$ 2,00": money.formatMoney(
        money.countMoney(_real02quantity.value, 2),
      ),
      "Total em notas de R\$ 5,00": money.formatMoney(
        money.countMoney(_real05quantity.value, 5),
      ),
      "Total em notas de R\$ 10,00": money.formatMoney(
        money.countMoney(_real10quantity.value, 10),
      ),
      "Total em notas de R\$ 20,00": money.formatMoney(
        money.countMoney(_real20quantity.value, 20),
      ),
      "Total em notas de R\$ 50,00": money.formatMoney(
        money.countMoney(_real50quantity.value, 50),
      ),
      "Total em notas de R\$ 100,00": money.formatMoney(
        money.countMoney(_real100quantity.value, 100),
      ),
      "Total em notas de R\$ 200,00": money.formatMoney(
        money.countMoney(_real200quantity.value, 200),
      ),
    };
  }

  void clean() {
    _real02quantity.value = 0;
    _real05quantity.value = 0;
    _real10quantity.value = 0;
    _real20quantity.value = 0;
    _real50quantity.value = 0;
    _real100quantity.value = 0;
    _real200quantity.value = 0;
  }
}
