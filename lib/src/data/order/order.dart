import 'package:eatery_db/eatery_db.dart';

part 'order.g.dart';

@HiveType(typeId: TypeIndex.order)
class Order extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  int customerId;
  @HiveField(2)
  DateTime createdAt;
  @HiveField(3)
  DateTime? updatedAt;
  @HiveField(4)
  double subTotal;
  @HiveField(5)
  double taxTotal;
  @HiveField(6)
  double finalTotal;
  @HiveField(7)
  double roundOff;
  @HiveField(8)
  double grandTotal;
  @HiveField(9)
  double? paidTotal;
  @HiveField(10)
  OrderType type;

  Order({
    required this.customerId,
    required this.createdAt,
    this.updatedAt,
    required this.subTotal,
    required this.taxTotal,
    required this.finalTotal,
    required this.roundOff,
    required this.grandTotal,
    this.paidTotal,
    required this.type,

  }) : id = EateryDB.instance.orderBox?.nextId();
}
