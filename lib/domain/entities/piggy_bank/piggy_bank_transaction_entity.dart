import 'package:meta/meta.dart';
import 'dart:convert';

class PiggyBankTransactionEntity {
  PiggyBankTransactionEntity({
    @required this.id,
    @required this.idPiggybank,
    @required this.date,
    @required this.value,
  });

  final String id;
  final String idPiggybank;
  final String date;
  final double value;

  factory PiggyBankTransactionEntity.fromJson(String str) => PiggyBankTransactionEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PiggyBankTransactionEntity.fromMap(Map<String, dynamic> json) => PiggyBankTransactionEntity(
        id: json["id"],
        idPiggybank: json["id_piggybank"],
        date: json["date"],
        value: json["value"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "id_piggybank": idPiggybank,
        "date": date,
        "value": value,
      };
}
