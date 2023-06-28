import 'package:eatery_db/eatery_db.dart';

part 'taxSlab.g.dart';

@HiveType(typeId: 80)
class TaxSlab extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  double rate;
  @HiveField(3)
  TaxType type;

  TaxSlab(
      {required this.id,
      required this.name,
      required this.rate,
      required this.type});

  TaxSlab.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        rate = map['rate'],
        type = TaxType.values
            .singleWhere((element) => element.index == map['type']);

  Map<String, Object?> toMap() {
    return {'_id': id, 'name': name, 'rate': rate, 'type': type.index};
  }
}
