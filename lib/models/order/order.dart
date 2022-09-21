import 'package:hive/hive.dart';

import '../customer/customer.dart';
import 'order_item.dart';
import 'order_type.dart';

part 'order.g.dart';

@HiveType(typeId: 40)
class Order extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  Customer customer; // model
  @HiveField(2)
  List<OrderItem> items; // [model]
  @HiveField(3)
  DateTime createdAt; // obj
  @HiveField(4)
  DateTime? updatedAt; // obj
  @HiveField(5)
  double taxable;
  @HiveField(6)
  double? taxTotal;
  @HiveField(7)
  double? discountTotal;
  @HiveField(8)
  double? serviceCharges;
  @HiveField(9)
  double? otherCharges;
  @HiveField(10)
  double? roundOff;
  @HiveField(11)
  double finalTotal;
  @HiveField(12)
  OrderType type; // model

  Order(
      {this.id,
      required this.customer,
      required this.items,
      required this.createdAt,
      this.updatedAt,
      required this.taxable,
      this.taxTotal,
      this.discountTotal,
      this.serviceCharges,
      this.otherCharges,
      this.roundOff,
      required this.finalTotal,
      required this.type});

  Order.fromMap(Map<String, dynamic> map)
      : id = map['_id'],
        customer = Customer.fromMap(map['customer']),
        items = [for (var each in map['items']) OrderItem.fromMap(each)],
        createdAt = DateTime.parse(map['createdAt'] as String),
        updatedAt = DateTime.parse(map['updatedAt'] as String),
        taxable = map['taxable'],
        taxTotal = map['taxTotal'],
        discountTotal = map['discountTotal'],
        serviceCharges = map['serviceCharges'],
        otherCharges = map['otherCharges'],
        roundOff = map['roundOff'],
        finalTotal = map['finalTotal'],
        type = OrderType.values
            .singleWhere((element) => element.id == map['type']);

  Map<String, Object?> toMap() {
    return {
      '_id': id,
      'customer': customer.toMap(),
      'items': [for (var each in items) each.toMap()],
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt != null ? updatedAt!.toIso8601String() : null,
      'taxable': taxable,
      'taxTotal': taxTotal,
      'discountTotal': discountTotal,
      'serviceCharges': serviceCharges,
      'otherCharges': otherCharges,
      'roundOff': roundOff,
      'finalTotal': finalTotal,
      'type': type.id,
    };
  }
}
