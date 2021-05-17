import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../database.dart';

class DatabaseSQLite {
  static const databaseName = 'piggyBank.db';

  static Future<Database> getDatabase() async {
    try {
      final String path = join(await (getDatabasesPath()), databaseName);

      return openDatabase(
        path,
        onCreate: (db, version) {
          db.execute(PiggyBankSQLITETable.createTable);
        },
        version: 1,
      );
    } catch (error) {
      throw Exception('Erro ao retornar o banco de dados');
    }
  }

  static Future<int> truncateTable(String nameTable) async {
    try {
      final Database db = await getDatabase();
      return db.delete(nameTable);
    } catch (error) {
      throw Exception('Erro ao truncar a tabela $nameTable');
    }
  }

  static Future<void> dropDatabase() async {
    try {
      final String path = join(await (getDatabasesPath()), databaseName);
      await deleteDatabase(path);
    } catch (error) {
      throw Exception('Erro ao deletar o banco de dados');
    }
  }
}
