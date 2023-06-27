import 'package:eatery_db/eatery_db.dart';

part 'order.g.dart';

@HiveType(typeId: 40)
class Order extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  Customer customer; // model
  @HiveField(2)
  DateTime createdAt; // obj
  @HiveField(3)
  DateTime? updatedAt; // obj
  @HiveField(4)
  double taxable;
  @HiveField(5)
  double? taxTotal;
  @HiveField(6)
  double? discountTotal;
  @HiveField(7)
  double? serviceCharges;
  @HiveField(8)
  double? otherCharges;
  @HiveField(9)
  double? roundOff;
  @HiveField(10)
  double finalTotal;
  @HiveField(11)
  bool isPaid;
  @HiveField(12)
  bool isClosed;
  @HiveField(13)
  OrderType type; // enum

  Order(
      {required this.id,
      required this.customer,
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
      : id = map['_id'],
        customer = Customer.fromMap(map['customer']),
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
      '_id': id,
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
