import 'package:meu_cofrinho/data/usecases/usecases.dart';
import 'package:meu_cofrinho/domain/domain.dart';
import 'package:meu_cofrinho/main/factories/infra/infra.dart';

GetListPiggyBank makeGetListPiggyBank() {
  return LocalGetListPiggyBank(makeSqliteAdapter());
}
