import 'package:eatery_db/eatery_db.dart';
part 'taxEdition.type.g.dart';

@HiveType(typeId: taxEditionTypeSchemaIndex)
enum TaxEditionType {
  @HiveField(0, defaultValue: true)
  gst,
  @HiveField(1)
  vat
}
