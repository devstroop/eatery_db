import 'package:eatery_db/eatery_db.dart';

part 'order.g.dart';

@HiveType(typeId: TypeIndex.order)
class Order extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  Customer customer;
  @HiveField(2)
  DateTime timestamp;
  @HiveField(3)
  List<Product> products;
  @HiveField(4)
  double subtotal;
  @HiveField(5)
  double? taxTotal;
  @HiveField(6)
  double? discountTotal;
  @HiveField(7)
  double? convenienceFee;
  @HiveField(8)
  double? roundOff;
  @HiveField(9)
  double finalTotal;
  @HiveField(10)
  Payment? payment;
  @HiveField(11)
  OrderType type;

  Order({required this.customer, required this.products, required this.type})
      : id = EateryDB.instance.orderBox?.nextId(),
        timestamp = DateTime.now(),
        subtotal = products.fold(
            0, (previousValue, element) => previousValue + element.salePrice!),
        taxTotal = 0,
        discountTotal = 0,
        convenienceFee = 0,
        roundOff = 0,
        finalTotal = products.fold(
            0, (previousValue, element) => previousValue + element.salePrice!);

  Order.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        customer = EateryDB.instance.customerBox!.values
            .where((element) => element.id == map['customerId'])
            .first,
        products = map['products'].map((e) {
          return EateryDB.instance.productBox!.values
              .where((element) => element.id == e)
              .first;
        }).toList(),
        timestamp = DateTime.parse(map['timestamp'] as String),
        subtotal = map['subtotal'],
        taxTotal = map['taxTotal'],
        discountTotal = map['discountTotal'],
        convenienceFee = map['convenienceFee'],
        roundOff = map['roundOff'],
        finalTotal = map['finalTotal'],
        type = OrderType.values
            .singleWhere((element) => element.id == map['type']);

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'customerId': customer.id,
      'products': products.map((e) => e.id).toList(),
      'timestamp': timestamp.millisecondsSinceEpoch,
      'subtotal': subtotal,
      'taxTotal': taxTotal,
      'discountTotal': discountTotal,
      'convenienceFee': convenienceFee,
      'roundOff': roundOff,
      'finalTotal': finalTotal,
      'type': type.id,
    };
  }

  static Order fromIterable(Iterable<dynamic> row) {
    return Order.fromMap({
      'id': row.elementAt(0),
      'customerId': row.elementAt(1),
      'timestamp': row.elementAt(2),
      'subtotal': row.elementAt(3),
      'taxTotal': row.elementAt(4),
      'discountTotal': row.elementAt(5),
      'convenienceFee': row.elementAt(6),
      'roundOff': row.elementAt(7),
      'finalTotal': row.elementAt(8),
      'type': row.elementAt(9),
    });
  }

  List<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['customerId'],
      map['timestamp'],
      map['subtotal'],
      map['taxTotal'],
      map['discountTotal'],
      map['convenienceFee'],
      map['roundOff'],
      map['finalTotal'],
      map['type'],
    ];
  }
}
