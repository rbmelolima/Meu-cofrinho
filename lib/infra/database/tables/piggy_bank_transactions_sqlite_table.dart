class PiggyBankTransactionsSQLITETable {
  static final String table = "piggy_bank_transactions";

  static final String createTable = 'CREATE TABLE $table('
      'id           TEXT PRIMARY KEY,'
      'iPiggyBank   TEXT NOT NULL,'
      'date         TEXT NOT NULL,'   
      'value        REAL NOT NULL)';
}