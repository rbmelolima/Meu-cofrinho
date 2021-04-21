import 'package:meta/meta.dart';
import 'dart:convert';

class PiggyBankEntity {
  PiggyBankEntity({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.type,
    @required this.date,
    @required this.money,
  });

  final String id;
  final String name;
  final String description;
  final String type;
  final String date;
  final double money;

  factory PiggyBankEntity.fromJson(String str) => PiggyBankEntity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PiggyBankEntity.fromMap(Map<String, dynamic> json) => PiggyBankEntity(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        type: json["type"],
        date: json["date"],
        money: json["money"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "type": type,
        "date": date,
        "money": money,
      };
}
