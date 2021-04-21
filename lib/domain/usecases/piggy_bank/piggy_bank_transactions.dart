abstract class InsertMoneyInPiggyBank {
  Future<bool> insertMoneyInPiggyBank(String idPiggyBank, double money);
}

abstract class RemoveMoneyFromPiggyBank {
  Future<bool> removeMoneyFromPiggyBank(String idPiggyBank, double money);
}