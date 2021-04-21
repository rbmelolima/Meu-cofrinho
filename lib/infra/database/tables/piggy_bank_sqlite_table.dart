class PiggyBankSQLITETable {
  static final String table = "piggy_bank";

  static final String createTable = 'CREATE TABLE $table('
      'id           TEXT PRIMARY KEY,'
      'date         TEXT NOT NULL,'
      'name         TEXT NOT NULL,'
      'description  TEXT,'
      'type         TEXT,'
      'money        REAL NOT NULL)';
}
