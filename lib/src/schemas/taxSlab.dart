import 'package:eatery_db/eatery_db.dart';

part 'taxSlab.g.dart';

@HiveType(typeId: 111)
class TaxSlab extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  String name;
  @HiveField(2)
  double rate;
  @HiveField(3)
  TaxType type;

  TaxSlab({required this.name, required this.rate, required this.type})
      : companyKey = EateryDB.instance.openedCompany?.key;

  TaxSlab.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        name = map['name'],
        rate = map['rate'],
        type = TaxType.values
            .singleWhere((element) => element.index == map['type']);

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'name': name,
      'rate': rate,
      'type': type.index
    };
  }
}
