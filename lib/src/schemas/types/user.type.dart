import 'package:eatery_db/eatery_db.dart';

part 'user.type.g.dart';

@HiveType(typeId: 9)
enum UserType {
  @HiveField(0)
  admin,
  @HiveField(1)
  manager,
  @HiveField(2)
  accountantOrCashier,
  @HiveField(3)
  chefOrCookOrBarTender,
  @HiveField(4)
  deliveryPerson,
  @HiveField(5)
  dishWasherOrCleanerOrHelper,
  @HiveField(6)
  other,
}
