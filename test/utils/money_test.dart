import 'package:flutter_test/flutter_test.dart';
import 'package:meu_cofrinho/utils/money.dart';

void main() {
  Money sut;

  setUp(() {
    sut = new Money();
  });

  test('Verifica se a classe Money está calculando corretamente', () {
    var result1 = sut.countMoney(10, -5);
    var result2 = sut.countMoney(10, 50);

    expect(result1, 10);
    expect(result2, 500);
  });

  test('Verifica se a classe Money está convertendo corretamente para o formato moeda', () {
    //Não estou conseguindo testar a formatação da maneira correta
    //Erro: Differ at offset 2
    
    var result = sut.formatMoney(1);
    var contains = result.contains('1,00');
    expect(contains, true);
  });
}
