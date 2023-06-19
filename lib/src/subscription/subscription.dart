import 'package:eatery_db/eatery_db.dart';

part 'subscription.g.dart';

@HiveType(typeId: 70)
class Subscription extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String? purchaseCode;
  @HiveField(2)
  DateTime? validFrom; // obj?
  @HiveField(3)
  DateTime? validTill; // obj?
  @HiveField(4)
  SubscriptionType subscriptionType = SubscriptionType.free; // enum

  Subscription(
      {required this.id,
      this.purchaseCode,
      this.validFrom,
      this.validTill,
      required this.subscriptionType});

  Subscription.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        purchaseCode = map['purchaseCode'],
        validFrom = DateTime.parse(map['validFrom'] as String),
        validTill = DateTime.parse(map['validTill'] as String),
        subscriptionType = SubscriptionType.values
            .singleWhere((element) => element.id == map['subscriptionType']);

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': purchaseCode,
      'validFrom': validFrom != null ? validFrom!.toIso8601String() : null,
      'validTill': validTill != null ? validTill!.toIso8601String() : null,
      'subscriptionType': subscriptionType.id
    };
  }
}
