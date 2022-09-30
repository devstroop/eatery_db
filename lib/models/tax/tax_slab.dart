import 'package:eatery_db/models/tax/tax_type.dart';
import 'package:hive/hive.dart';

part 'tax_slab.g.dart';

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
      {required this.id, required this.name, required this.rate, required this.type});

  TaxSlab.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        rate = map['rate'],
        type =
            TaxType.values.singleWhere((element) => element.id == map['rate']);

  Map<String, Object?> toMap() {
    return {'_id': id, 'name': name, 'rate': rate, 'type': type.id};
  }
}
