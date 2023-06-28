import 'package:eatery_db/eatery_db.dart';
part 'edition.type.auto-generated.dart';

@HiveType(typeId: 2)
enum Edition {
  @HiveField(0, defaultValue: true)
  gst,
  @HiveField(1)
  vat
}
