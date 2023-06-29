import 'package:eatery_db/eatery_db.dart';

part 'tax_slab.g.dart';

@HiveType(typeId: taxSlabSchemaIndex)
class TaxSlab extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  double rate;
  @HiveField(2)
  TaxType type;

  TaxSlab({required this.name, required this.rate, required this.type});

  TaxSlab.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        rate = map['rate'],
        type = TaxType.values
            .singleWhere((element) => element.index == map['type']);

  Map<String, Object?> toMap() {
    return {'name': name, 'rate': rate, 'type': type.index};
  }
}
