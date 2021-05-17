import 'package:get/get.dart';
import 'package:meu_cofrinho/main/factories/factories.dart';

class Routes {
  static String home = "/";
  static String coinCounter = "/contador-de-moedinhas";
  static String cashCounter = "/contador-de-notas";
  static String piggyBankList = "/meus-cofrinhos";

  static List<GetPage> allRoutes() {
    return [
      GetPage(name: home, page: makeHomePage),
      GetPage(name: coinCounter, page: makeCoinCounterPage),
      GetPage(name: cashCounter, page: makeCashCounterPage),
      GetPage(name: piggyBankList, page: makePiggyBankListPage),
    ];
  }

  static unknownRoute() => GetPage(name: home, page: makeHomePage);
}
