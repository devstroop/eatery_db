import 'package:eatery_db/eatery_db.dart';

extension MasterTypeExtension on MasterType {

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
