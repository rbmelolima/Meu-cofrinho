abstract class CoinCounterPresenter {
  String getFormattedTotalValue();
  Map<String, String> getInformationAboutMoney();
  void clean();

  Stream<int> get cents05quantity;
  Stream<int> get cents10quantity;
  Stream<int> get cents25quantity;
  Stream<int> get cents50quantity;
  Stream<int> get real01quantity;

  void handleCents05quantity(int quantity, {bool clean});
  void handleCents10quantity(int quantity, {bool clean});
  void handleCents25quantity(int quantity, {bool clean});
  void handleCents50quantity(int quantity, {bool clean});
  void handleReal01quantity(int quantity, {bool clean});
}
