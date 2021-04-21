import '../../entities/entities.dart';

abstract class GetListPiggyBank {
  Future<List<PiggyBankEntity>> getListPiggyBank();
}

abstract class CreatePiggyBank {
  Future<bool> createPiggyBank(String name, [String description]);
}
