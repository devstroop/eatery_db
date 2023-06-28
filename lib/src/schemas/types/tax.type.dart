import 'package:eatery_db/eatery_db.dart';
part 'tax.type.g.dart';

@HiveType(typeId: 81)
enum TaxType {
  @HiveField(0, defaultValue: true)
  inclusive,
  @HiveField(1)
  exclusive
}
