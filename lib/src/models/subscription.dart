import 'package:eatery_db/eatery_db.dart';

part '../adapters/subscription.g.dart';

@HiveType(typeId: 70)
class Subscription extends HiveObject {
  @HiveField(0)
  String serialNo;
  @HiveField(1)
  String activationKey;

  Subscription(
      {
      required this.serialNo,
      required this.activationKey});

  Subscription.fromMap(Map<String, dynamic> map)
      :
        serialNo = map['serialNo'],
    activationKey = map['activationKey'];

  Map<String, Object?> toMap() {
    return {
      'name': serialNo,
      'activationKey': activationKey,
    };
  }
}
