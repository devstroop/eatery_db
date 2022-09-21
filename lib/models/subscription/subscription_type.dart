import 'package:hive/hive.dart';
part 'subscription_type.g.dart';

@HiveType(typeId: 71)
enum SubscriptionType {
  @HiveField(0, defaultValue: true)
  free,
  @HiveField(1)
  premium
}

extension SubscriptionTypeExtension on SubscriptionType {
  int? get id {
    switch (this) {
      case SubscriptionType.free:
        return 0;
      case SubscriptionType.premium:
        return 1;
      default:
        return null;
    }
  }

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

  String? get description {
    switch (this) {
      case SubscriptionType.free:
        return 'Free features';
      case SubscriptionType.premium:
        return 'All premium features';
      default:
        return null;
    }
  }
}
