import 'package:meu_cofrinho/data/database/database.dart';
import 'package:meu_cofrinho/domain/domain.dart';
import 'package:meu_cofrinho/infra/database/database.dart';

class LocalCreatePiggyBank implements CreatePiggyBank {
  final InsertMethodDatabase database;

  LocalCreatePiggyBank(this.database);

  PiggyBankEntity createObject(String name, [String description]) {
    var now = DateTime.now();
    var id = now.toString() + "#" + name.trim();

    var piggyBank = PiggyBankEntity(
      id: id,
      date: now.toString(),
      name: name,
      description: description ?? "",
      money: 0,
    );

    return piggyBank;
  }

  Future<bool> createPiggyBank(String name, [String description]) async {
    try {
      PiggyBankEntity piggyBank = createObject(name, description);

      int success = await database.insert(PiggyBankSQLITETable.table, piggyBank.toMap());

      return success > 0 ? true : false;
    } catch (error) {
      return false;
    }
  }
}
