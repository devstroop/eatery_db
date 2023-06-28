import 'package:eatery_db/eatery_db.dart';

extension StaffTypeExtension on UserType {
  String? get name {
    switch (this) {
      case UserType.admin:
        return "Admin";
      case UserType.manager:
        return "Manager";
      case UserType.accountantOrCashier:
        return "Accountant / Cashier";
      case UserType.chefOrCookOrBarTender:
        return "Chef / Cook / Bar Tender";
      case UserType.deliveryPerson:
        return "Delivery Person";
      case UserType.dishWasherOrCleanerOrHelper:
        return "Dish Washer / Cleaner / Helper";
      case UserType.other:
        return "Other";
      default:
        return null;
    }
  }
}
