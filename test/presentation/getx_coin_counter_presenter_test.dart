import 'package:flutter_test/flutter_test.dart';
import 'package:meu_cofrinho/presentation/presenters/presenters.dart';
import 'package:meu_cofrinho/utils/money.dart';

void main() {
  GetxCoinCounterPresenter sut;
  Money money;

  setUp(() {
    money = new Money();
    sut = new GetxCoinCounterPresenter(money);
  });

  test('Verificando o funcionamento dos handles de moedas', () {
    sut.handleCents05quantity(-15);
    sut.handleCents10quantity(10);
    sut.handleCents25quantity(10);
    sut.handleCents50quantity(10);
    sut.handleReal01quantity(10);

    sut.cents05quantity.listen(((value) => expect(value, 0)));
    sut.cents10quantity.listen(((value) => expect(value, 10)));
    sut.cents25quantity.listen(((value) => expect(value, 10)));
    sut.cents50quantity.listen(((value) => expect(value, 10)));
    sut.real01quantity.listen(((value) => expect(value, 10)));
  });

  test('Testando o valor total', () {
    sut.handleCents05quantity(0);
    sut.handleCents10quantity(0);
    sut.handleCents25quantity(1);
    sut.handleCents50quantity(2);
    sut.handleReal01quantity(1);

    var result = sut.getFormattedTotalValue();
    var contains = result.contains('2,25');
    expect(contains, true);
  });
}
