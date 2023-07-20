import 'package:eatery_db/eatery_db.dart';

part 'subscription.g.dart';

@HiveType(typeId: TypeIndex.subscription)
class Subscription extends HiveObject {
  @HiveField(0)
  String? purchaseCode;
  @HiveField(1)
  DateTime? validFrom;
  @HiveField(2)
  DateTime? validTill;
  @HiveField(3)
  SubscriptionType? subscriptionType = SubscriptionType.free;

  Subscription(
      {this.purchaseCode,
      this.validFrom,
      this.validTill,
      required this.subscriptionType});

  Subscription.fromMap(Map<String, dynamic> map)
      : purchaseCode = map['purchaseCode'],
        validFrom =
            DateTime.fromMillisecondsSinceEpoch(map['validFrom'] as int? ?? 0),
        validTill =
            DateTime.fromMillisecondsSinceEpoch(map['validTill'] as int? ?? 0),
        subscriptionType = SubscriptionType.values
            .singleWhere((element) => element.id == map['subscriptionType']);

  Map<String, Object?> toMap() {
    return {
      'name': purchaseCode,
      'validFrom': validFrom?.millisecondsSinceEpoch,
      'validTill': validTill?.millisecondsSinceEpoch,
      'subscriptionType': subscriptionType?.id
    };
  }
}
