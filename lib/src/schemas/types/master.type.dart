

import 'package:eatery_db/eatery_db.dart';
part 'master.type.auto-generated.dart';
@HiveType(typeId: 71)
enum MasterType {
  @HiveField(0, defaultValue: true)
  customer,
  @HiveField(1)
  supplier,
}

extension StaffTypeExtension on MasterType {

  String? get name {
    switch (this) {
      case MasterType.customer:
        return "Customer";
      case MasterType.supplier:
        return "Supplier";
      default:
        return null;
    }
  }
}
