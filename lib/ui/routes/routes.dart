import 'package:get/get.dart';
import 'package:meu_cofrinho/main/factories/factories.dart';

class Routes {
  static String home = "/";
  static String coinCounter = "/contador-de-moedinhas";

  static List<GetPage> allRoutes() {
    return [
      GetPage(name: home, page: makeHomePage),
      GetPage(name: coinCounter, page: makeCoinCounterPage),
    ];
  }

  static unknownRoute() => GetPage(name: home, page: makeHomePage);
}
