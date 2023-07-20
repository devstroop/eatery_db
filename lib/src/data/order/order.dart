import 'package:eatery_db/eatery_db.dart';

part 'order.g.dart';

@HiveType(typeId: TypeIndex.order)
class Order extends HiveObject {
  @HiveField(0)
  Customer customer; // model
  @HiveField(1)
  DateTime createdAt; // obj
  @HiveField(2)
  DateTime? updatedAt; // obj
  @HiveField(3)
  double taxable;
  @HiveField(4)
  double? taxTotal;
  @HiveField(5)
  double? discountTotal;
  @HiveField(6)
  double? serviceCharges;
  @HiveField(7)
  double? otherCharges;
  @HiveField(8)
  double? roundOff;
  @HiveField(9)
  double finalTotal;
  @HiveField(10)
  bool isPaid;
  @HiveField(11)
  bool isClosed;
  @HiveField(12)
  OrderType type; // enum

  Order(
      {required this.customer,
      this.updatedAt,
      this.taxable = 0.0,
      this.taxTotal,
      this.discountTotal,
      this.serviceCharges,
      this.otherCharges,
      this.roundOff,
      this.finalTotal = 0.0,
      this.isPaid = false,
      this.isClosed = false,
      required this.type}) : createdAt = DateTime.now();

  Order.fromMap(Map<String, dynamic> map)
      : customer = Customer.fromMap(map['customer']),
        createdAt = DateTime.parse(map['createdAt'] as String),
        updatedAt = DateTime.parse(map['updatedAt'] as String),
        taxable = map['taxable'],
        taxTotal = map['taxTotal'],
        discountTotal = map['discountTotal'],
        serviceCharges = map['serviceCharges'],
        otherCharges = map['otherCharges'],
        roundOff = map['roundOff'],
        finalTotal = map['finalTotal'],
        isPaid = map['isPaid'],
        isClosed = map['isClosed'],
        type = OrderType.values
            .singleWhere((element) => element.id == map['type']);

  Map<String, Object?> toMap() {
    return {
      'customer': customer.toMap(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt != null ? updatedAt!.toIso8601String() : null,
      'taxable': taxable,
      'taxTotal': taxTotal,
      'discountTotal': discountTotal,
      'serviceCharges': serviceCharges,
      'otherCharges': otherCharges,
      'roundOff': roundOff,
      'finalTotal': finalTotal,
      'isPaid': isPaid,
      'isClosed': isClosed,
      'type': type.id,
    };
  }
}
