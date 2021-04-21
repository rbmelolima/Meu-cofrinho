import 'package:meu_cofrinho/data/database/database.dart';
import 'package:meu_cofrinho/domain/domain.dart';
import 'package:meu_cofrinho/infra/database/database.dart';

class LocalGetListPiggyBank implements GetListPiggyBank {
  final SelectMethodDatabase database;
  LocalGetListPiggyBank(this.database);

  Future<List<PiggyBankEntity>> getListPiggyBank() async {
    try {
      var result = await database.query(PiggyBankSQLITETable.table);

      List<PiggyBankEntity> list = [];

      result.forEach((element) {
        list.add(PiggyBankEntity.fromMap(element));
      });

      return list;
    } catch (error) {
      throw DomainError.selectDatabaseError;
    }
  }
}
