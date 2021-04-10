import 'package:get/get.dart';
import 'package:meu_cofrinho/main/factories/factories.dart';

class Routes {
  static String home = "/home";

  static List<GetPage> allRoutes() {
    return [
      GetPage(name: home, page: makeHomePage),
    ];
  }

  static unknownRoute() => GetPage(name: home, page: makeHomePage);
}
