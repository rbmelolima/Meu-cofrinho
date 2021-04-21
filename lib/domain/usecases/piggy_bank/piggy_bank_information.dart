import '../../entities/entities.dart';

abstract class GetListPiggyBank {
  Future<List<PiggyBankEntity>> getListPiggyBank();
}