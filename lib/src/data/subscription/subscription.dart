import 'package:eatery_db/eatery_db.dart';

part 'subscription.g.dart';

@HiveType(typeId: TypeIndex.subscription)
class Subscription extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String? purchaseCode;
  @HiveField(2)
  DateTime? validFrom;
  @HiveField(3)
  DateTime? validTill;
  @HiveField(4)
  SubscriptionType? subscriptionType = SubscriptionType.free;

  Subscription(
      {required this.id,
      this.purchaseCode,
      this.validFrom,
      this.validTill,
      required this.subscriptionType});

  Subscription.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        purchaseCode = map['purchaseCode'],
        validFrom =
            DateTime.fromMillisecondsSinceEpoch(map['validFrom'] as int? ?? 0),
        validTill =
            DateTime.fromMillisecondsSinceEpoch(map['validTill'] as int? ?? 0),
        subscriptionType = SubscriptionType.values
            .singleWhere((element) => element.id == map['subscriptionType']);

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'name': purchaseCode,
      'validFrom': validFrom?.millisecondsSinceEpoch,
      'validTill': validTill?.millisecondsSinceEpoch,
      'subscriptionType': subscriptionType?.id
    };
  }
}
