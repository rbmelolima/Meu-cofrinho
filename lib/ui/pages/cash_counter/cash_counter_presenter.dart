abstract class CashCounterPresenter {
  String getFormattedTotalValue();
  Map<String, String> getInformationAboutMoney();
  void clean();

  Stream<int> get real02quantity;
  Stream<int> get real05quantity;
  Stream<int> get real10quantity;
  Stream<int> get real20quantity;
  Stream<int> get real50quantity;
  Stream<int> get real100quantity;
  Stream<int> get real200quantity;

  void handleReal02quantity(int quantity, {bool clean});
  void handleReal05quantity(int quantity, {bool clean});
  void handleReal10quantity(int quantity, {bool clean});
  void handleReal20quantity(int quantity, {bool clean});
  void handleReal50quantity(int quantity, {bool clean});
  void handleReal100quantity(int quantity, {bool clean});
  void handleReal200quantity(int quantity, {bool clean});
}
