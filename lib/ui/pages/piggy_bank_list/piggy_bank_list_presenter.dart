import 'package:meu_cofrinho/domain/entities/entities.dart';

abstract class PiggyBankListPresenter {
  Future<List<PiggyBankEntity>> load();
}
