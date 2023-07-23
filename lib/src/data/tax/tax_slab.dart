import 'package:eatery_db/eatery_db.dart';

part 'tax_slab.g.dart';

@HiveType(typeId: TypeIndex.taxSlab)
class TaxSlab extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  double rate;
  @HiveField(3)
  TaxType type;

  TaxSlab({required this.name, required this.rate, required this.type}): id = EateryDB.instance.taxSlabBox.nextId();

  TaxSlab.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        rate = map['rate'],
        type = TaxType.values
            .singleWhere((element) => element.index == map['type']);

  Map<String, Object?> toMap() {
    return {'id': id, 'name': name, 'rate': rate, 'type': type.index};
  }
}
