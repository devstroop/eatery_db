import 'package:eatery_db/eatery_db.dart';

part 'user.type.auto-generated.dart';

@HiveType(typeId: 71)
enum UserType {
  @HiveField(0, defaultValue: true)
  admin,
  @HiveField(1)
  manager,
  @HiveField(2)
  cashierOrAccountant,
  @HiveField(3)
  chefOrCook,
  @HiveField(4)
  barTender,
  @HiveField(5)
  deliveryPerson,
  @HiveField(6)
  dishWasherOrCleanerOrHelper,
  @HiveField(7)
  other,
}

extension StaffTypeExtension on UserType {
  String? get name {
    switch (this) {
      case UserType.admin:
        return "Admin";
      case UserType.manager:
        return "Manager";
      case UserType.cashierOrAccountant:
        return "Cashier/Accountant";
      case UserType.chefOrCook:
        return "Chef/Cook";
      case UserType.barTender:
        return "Bar Tender";
      case UserType.deliveryPerson:
        return "Delivery Person";
      case UserType.dishWasherOrCleanerOrHelper:
        return "Dish Washer/Cleaner/Helper";
      case UserType.other:
        return "Other";
      default:
        return null;
    }
  }
}
