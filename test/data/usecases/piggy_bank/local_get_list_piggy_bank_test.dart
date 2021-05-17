import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meu_cofrinho/data/database/database.dart';
import 'package:meu_cofrinho/data/usecases/usecases.dart';
import 'package:meu_cofrinho/domain/domain.dart';
import 'package:meu_cofrinho/infra/database/database.dart';
import 'package:mockito/mockito.dart';

class SelectMethodDatabaseSpy extends Mock implements SelectMethodDatabase {}

void main() {
  LocalGetListPiggyBank sut;
  SelectMethodDatabaseSpy database;

  PostExpectation mockDatabaseMethod() {
    return when(database.query(
      any,
      columns: anyNamed('columns'),
      distinct: anyNamed('distinct'),
      groupBy: anyNamed('groupBy'),
      having: anyNamed('having'),
      limit: anyNamed('limit'),
      offset: anyNamed('offset'),
      orderBy: anyNamed('orderBy'),
      where: anyNamed('where'),
      whereArgs: anyNamed('whereArgs'),
    ));
  }

  mockDatabaseSuccess() {
    var date = DateTime.now().toString();
    var word = faker.lorem.word();

    mockDatabaseMethod().thenAnswer(
      (_) async => [
        {
          "id": word,
          "date": date,
          "name": word,
          "description": word,
          "money": 10.0,
        },
        {
          "id": word,
          "date": date,
          "name": word,
          "description": '',
          "money": 58.0,
        },
      ],
    );
  }

  setUp(() {
    database = SelectMethodDatabaseSpy();
    sut = LocalGetListPiggyBank(database);
    mockDatabaseSuccess();
  });

  test('Verificando se método está retornando uma lista de cofrinhos', () async {
    var res = await sut.getListPiggyBank();
    verify(database.query(PiggyBankSQLITETable.table));
    expect(res.length, 2);
  });

  test('Verificando se método está funcionando corretamente caso ocorra uma exceção', () async {
    mockDatabaseMethod().thenThrow((_) => Exception());
    var res = sut.getListPiggyBank();
    expect(res, throwsA(DomainError.selectDatabaseError));
  });
}