abstract class CoinCounterPresenter {
  String getFormattedTotalValue();
  Map<String, String> getInformationAboutMoney();

  Stream<int> get cents05quantity;
  Stream<int> get cents10quantity;
  Stream<int> get cents25quantity;
  Stream<int> get cents50quantity;
  Stream<int> get real01quantity;

  void handleCents05quantity(int quantity);
  void handleCents10quantity(int quantity);
  void handleCents25quantity(int quantity);
  void handleCents50quantity(int quantity);
  void handleReal01quantity(int quantity);
}
