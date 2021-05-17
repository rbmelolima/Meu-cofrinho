import 'package:meu_cofrinho/data/database/database.dart';
import 'package:sqflite/sqflite.dart';

import 'sqlite_config.dart';

class SQLiteAdapter implements SelectMethodDatabase, InsertMethodDatabase, DeleteMethodDatabase, UpdateMethodDatabase {
  Future<Database> getDB() async {
    Database db = await DatabaseSQLite.getDatabase();
    return db;
  }

  @override
  Future<int> delete(String table, {String where, List<Object> whereArgs}) async {
    try {
      final database = await getDB();
      return await database.delete(
        table,
        where: where,
        whereArgs: whereArgs,
      );
    } catch (error) {
      throw Exception("Erro ao executar o delete na tabela: $table");
    }
  }

  @override
  Future<int> insert(String table, Map<String, Object> values) async {
    try {
      final database = await getDB();
      return await database.insert(
        table,
        values,
        conflictAlgorithm: ConflictAlgorithm.abort,
      );
    } catch (error) {
      throw Exception("Erro executar o insert na tabela: $table");
    }
  }

  @override
  Future<List<Map<String, Object>>> query(String table, {bool distinct, List<String> columns, String where, List<Object> whereArgs, String groupBy, String having, String orderBy, int limit, int offset}) async {
    try {
      final database = await getDB();
      return await database.query(
        table,
        columns: columns,
        distinct: distinct,
        groupBy: groupBy,
        having: having,
        limit: limit,
        offset: offset,
        orderBy: orderBy,
        where: where,
        whereArgs: whereArgs,
      );
    } catch (error) {
      throw Exception("Erro executar o select na tabela: $table");
    }
  }

  @override
  Future<int> update(String table, Map<String, Object> values, {String where, List<Object> whereArgs}) async {
    try {
      final database = await getDB();
      return await database.update(
        table,
        values,
        where: where,
        whereArgs: whereArgs,
      );
    } catch (error) {
      throw Exception("Erro executar o update na tabela: $table");
    }
  }
}
