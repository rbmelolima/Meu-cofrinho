import 'package:intl/intl.dart';
import 'package:meu_cofrinho/presentation/protocols/protocols.dart';

class Money implements UtilsMoney {
  double countMoney(int quantity, double multiplier) {
    return multiplier <= 0 ? quantity * 1.0 : quantity * multiplier;
  }

  String formatMoney(double money) {
    try {
      NumberFormat formatter = NumberFormat.currency(
        decimalDigits: 2,
        locale: 'pt_BR',
        symbol: 'R\$'
      );
      return formatter.format(money);
    } catch (error) {
      throw Exception("Não foi possível converter para o formato moeda");
    }
  }
}
