import 'package:eatery_db/eatery_db.dart';
part 'taxEdition.type.g.dart';

@HiveType(typeId: 2)
enum TaxEdition {
  @HiveField(0, defaultValue: true)
  gst,
  @HiveField(1)
  vat
}
