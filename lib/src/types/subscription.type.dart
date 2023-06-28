import 'package:eatery_db/eatery_db.dart';
part '../adapters/subscription.type.g.dart';

@HiveType(typeId: 71)
enum SubscriptionType {
  @HiveField(0, defaultValue: true)
  free,
  @HiveField(1)
  premium
}

extension SubscriptionTypeExtension on SubscriptionType {
  String? get name {
    switch (this) {
      case SubscriptionType.free:
        return "Free";
      case SubscriptionType.premium:
        return "Premium";
      default:
        return null;
    }
  }

}
