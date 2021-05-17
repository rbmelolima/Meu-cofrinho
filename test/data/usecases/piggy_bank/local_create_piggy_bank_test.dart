import 'package:flutter_test/flutter_test.dart';
import 'package:meu_cofrinho/data/database/database.dart';
import 'package:meu_cofrinho/data/usecases/usecases.dart';
import 'package:meu_cofrinho/infra/database/database.dart';
import 'package:mockito/mockito.dart';

class InsertMethodDatabaseSpy extends Mock implements InsertMethodDatabase {}

void main() {
  LocalCreatePiggyBank sut;
  InsertMethodDatabaseSpy database;

  PostExpectation mockDatabaseMethod() {
    return when(database.insert(any, any));
  }

  mockDatabaseSuccess() {
    mockDatabaseMethod().thenAnswer((_) async => 1);
  }

  setUp(() {
    database = InsertMethodDatabaseSpy();
    sut = LocalCreatePiggyBank(database);
    mockDatabaseSuccess();
  });

  test('Verificando se método está criando cofrinhos corretamente', () async {
    var success = await sut.createPiggyBank('meu_cofrinho');
    //O ID do cofrinho é gerado de acordo com o datetime, fica complicado de testar corretamente
    verify(database.insert(PiggyBankSQLITETable.table, any));
    expect(success, true);
  });

  test('Verificando se método está funcionando corretamente em casos de exceção', () async {
    mockDatabaseMethod().thenThrow(() => Exception());
    var success = await sut.createPiggyBank('meu_cofrinho');
    expect(success, false);
  });
}
