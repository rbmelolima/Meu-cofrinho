import 'package:meu_cofrinho/domain/domain.dart';
import 'package:meu_cofrinho/ui/pages/pages.dart';

class GetxPiggyBankPresenter implements PiggyBankListPresenter {
  final GetListPiggyBank listPiggyBank;

  GetxPiggyBankPresenter(this.listPiggyBank);

  Future<List<PiggyBankEntity>> load() async {
    try {
      final list = await listPiggyBank.getListPiggyBank();
      return list;
    } catch (error) {
      throw Exception("Não foi possível carregar seus cofrinhos");
    }
  }
}
