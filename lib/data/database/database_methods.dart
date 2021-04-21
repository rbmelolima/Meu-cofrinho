abstract class InsertMethodDatabase {
  Future<int> insert(String table, Map<String, Object> values);
}

abstract class DeleteMethodDatabase {
  Future<int> delete(String table, {String where, List<Object> whereArgs});
}

abstract class SelectMethodDatabase {
  Future<List<Map<String, Object>>> query(
    String table, {
    bool distinct,
    List<String> columns,
    String where,
    List<Object> whereArgs,
    String groupBy,
    String having,
    String orderBy,
    int limit,
    int offset,
  });
}

abstract class UpdateMethodDatabase {
  Future<int> update(
    String table,
    Map<String, Object> values, {
    String where,
    List<Object> whereArgs,
  });
}
