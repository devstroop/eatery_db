import 'package:eatery_db/eatery_db.dart';

extension SubscriptionExtension on Subscription {
  String get serialNo{
    // TODO: Implement this
    return '1234567890';
  }
  String get deviceId{
    // TODO: Implement this
    return '0123456789ABCDEF';
  }
  DateTime get validFrom {
    // TODO: Implement this
    return DateTime.now();
  }
  DateTime get validTill {
    // TODO: Implement this
    return DateTime.now().add(const Duration(days: 30));
  }
  bool get isExpired {
    // TODO: Implement this
    return false;
  }
  bool get isActivated {
    // TODO: Implement this
    return true;
  }
  bool get isTrial {
    // TODO: Implement this
    return false;
  }
}
