

import 'package:eatery_db/eatery_db.dart';
part 'master.type.g.dart';
@HiveType(typeId: 71)
enum MasterType {
  @HiveField(0, defaultValue: true)
  customer,
  @HiveField(1)
  supplier,
}
