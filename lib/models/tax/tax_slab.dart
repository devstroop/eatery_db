import 'package:hive/hive.dart';

part 'tax_slab.g.dart';

@HiveType(typeId: 80)
class TaxSlab extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  double rate;

  TaxSlab({this.id, required this.name, required this.rate});

  TaxSlab.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        name = map['name'],
        rate = map['rate'];

  Map<String, Object?> toMap() {
    return {'_id': id, 'name': name, 'rate': rate};
  }
}
