import 'package:flutter_test/flutter_test.dart';
import 'package:meu_cofrinho/presentation/presenters/presenters.dart';
import 'package:meu_cofrinho/utils/money.dart';

void main() {
  GetxCashCounterPresenter sut;
  Money money;

  setUp(() {
    money = new Money();
    sut = new GetxCashCounterPresenter(money);
  });

  test('Funcionamento dos handles de moedas #1', () {
    sut.handleReal02quantity(2);
    sut.handleReal05quantity(2);
    sut.handleReal10quantity(2);
    sut.handleReal20quantity(2);
    sut.handleReal50quantity(2);
    sut.handleReal100quantity(2);
    sut.handleReal200quantity(2);

    sut.real02quantity.listen(((value) => expect(value, 2)));
    sut.real05quantity.listen(((value) => expect(value, 2)));
    sut.real10quantity.listen(((value) => expect(value, 2)));
    sut.real20quantity.listen(((value) => expect(value, 2)));
    sut.real50quantity.listen(((value) => expect(value, 2)));
    sut.real100quantity.listen(((value) => expect(value, 2)));
    sut.real200quantity.listen(((value) => expect(value, 2)));
  });

  test('Funcionamento dos handles de moedas #2', () {
    sut.handleReal02quantity(2);
    sut.handleReal05quantity(2);
    sut.handleReal10quantity(2);
    sut.handleReal20quantity(2);
    sut.handleReal50quantity(2);
    sut.handleReal100quantity(2);
    sut.handleReal200quantity(2);

    sut.handleReal02quantity(20, clean: true);
    sut.handleReal05quantity(20, clean: true);
    sut.handleReal10quantity(20, clean: true);
    sut.handleReal20quantity(20, clean: true);
    sut.handleReal50quantity(20, clean: true);
    sut.handleReal100quantity(20, clean: true);
    sut.handleReal200quantity(20, clean: true);

    sut.real02quantity.listen(((value) => expect(value, 20)));
    sut.real05quantity.listen(((value) => expect(value, 20)));
    sut.real10quantity.listen(((value) => expect(value, 20)));
    sut.real20quantity.listen(((value) => expect(value, 20)));
    sut.real50quantity.listen(((value) => expect(value, 20)));
    sut.real100quantity.listen(((value) => expect(value, 20)));
    sut.real200quantity.listen(((value) => expect(value, 20)));
  });

  test('Testando o valor total', () {
    sut.handleReal02quantity(2);
    sut.handleReal05quantity(0);
    sut.handleReal10quantity(0);
    sut.handleReal20quantity(0);
    sut.handleReal50quantity(0);
    sut.handleReal100quantity(0);
    sut.handleReal200quantity(0);

    var result = sut.getFormattedTotalValue();
    var contains = result.contains('4,00');
    expect(contains, true);
  });
}
