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
  double taxTotal;
  @HiveField(6)
  double finalTotal;
  @HiveField(7)
  double roundOff;
  @HiveField(8)
  double grandTotal;
  @HiveField(9)
  Payment? payment;
  @HiveField(10)
  OrderType type;

  Order({
    required this.customer,
    required this.timestamp,
    required this.products,
    required this.subtotal,
    required this.taxTotal,
    required this.finalTotal,
    required this.roundOff,
    required this.grandTotal,
    this.payment,
    required this.type,
  }) : id = EateryDB.instance.orderBox?.nextId();

  Order.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        customer = EateryDB.instance.customerBox!.values
            .firstWhere((element) =>
        element.phone == map['customerPhone'],
            orElse: () => Customer(phone: map['customerPhone'])),
        timestamp = DateTime.fromMillisecondsSinceEpoch(map['timestamp']),
        products = map['products']
            .map<Product>((e) =>
            EateryDB.instance.productBox!.values
                .singleWhere((element) => element.id == e))
            .toList(),
        subtotal = map['subtotal'],
        taxTotal = map['taxTotal'],
        finalTotal = map['finalTotal']?.toDouble(),
        roundOff = map['roundOff']?.toDouble(),
        grandTotal = map['grandTotal'].toDouble(),
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
      'roundOff': roundOff,
      'finalTotal': finalTotal,
      'type': type.id,
    };
  }

  static Order fromIterable(Iterable<dynamic> row) {
    return Order.fromMap({
      'id': row.elementAt(0),
      'customerPhone': row.elementAt(1),
      'products': row.elementAt(2),
      'timestamp': row.elementAt(3),
      'subtotal': row.elementAt(4),
      'taxTotal': row.elementAt(5),
      'roundOff': row.elementAt(8),
      'finalTotal': row.elementAt(9),
      'type': row.elementAt(10),
    });
  }

  List<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['customerPhone'],
      map['products'],
      map['timestamp'],
      map['subtotal'],
      map['taxTotal'],
      map['roundOff'],
      map['finalTotal'],
      map['type']
    ];
  }
}
