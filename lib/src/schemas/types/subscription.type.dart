import 'package:eatery_db/eatery_db.dart';

part 'subscription.type.g.dart';

@HiveType(typeId: 6)
enum SubscriptionType {
  @HiveField(0, defaultValue: true)
  basic,
  @HiveField(1)
  professional,
  @HiveField(2)
  enterprise,
}
