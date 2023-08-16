import 'package:eatery_db/eatery_db.dart';

part 'order.g.dart';

@HiveType(typeId: TypeIndex.order)
class Order extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  Customer? customer;
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
            .where((element) => element.phone == map['customerPhone'])
            .firstOrNull ?? Customer(phone: map['customerPhone']),
        products = map['products'].map<Product>((e) => EateryDB.instance.productBox!.values.singleWhere((element) => element.id == e)).toList(),
        timestamp = DateTime.fromMillisecondsSinceEpoch(map['timestamp']),
        subtotal = map['subtotal'],
        taxTotal = map['taxTotal'],
        discountTotal = map['discountTotal'] != null ? double.parse(map['discountTotal'].toString()) : null,
        convenienceFee = map['convenienceFee'] != null ? double.parse(map['convenienceFee'].toString()) : null,
        roundOff = map['roundOff'] != null ? double.parse(map['roundOff'].toString()) : null,
        finalTotal = double.parse(map['finalTotal'].toString()),
        type = OrderType.values
            .singleWhere((element) => element.id == map['type']);

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'customerPhone': customer?.phone,
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
      'products': row.elementAt(2),
      'timestamp': row.elementAt(3),
      'subtotal': row.elementAt(4),
      'taxTotal': row.elementAt(5),
      'discountTotal': row.elementAt(6),
      'convenienceFee': row.elementAt(7),
      'roundOff': row.elementAt(8),
      'finalTotal': row.elementAt(9),
      'type': row.elementAt(10),
    });
  }

  List<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['customerId'],
      map['products'],
      map['timestamp'],
      map['subtotal'],
      map['taxTotal'],
      map['discountTotal'],
      map['convenienceFee'],
      map['roundOff'],
      map['finalTotal'],
      map['type']
    ];
  }
}
