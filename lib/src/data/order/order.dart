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
  double total;
  @HiveField(7)
  double roundOff;
  @HiveField(8)
  double grandTotal;
  @HiveField(9)
  Payment? payment;
  @HiveField(10)
  OrderType type;
  @HiveField(11)
  double? previousDue;
  @HiveField(12)
  double payable;

  Order({
    required this.customer,
    required this.timestamp,
    required this.products,
    required this.subtotal,
    required this.taxTotal,
    required this.total,
    required this.roundOff,
    required this.grandTotal,
    this.payment,
    required this.type,
    this.previousDue,
    required this.payable,

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
        total = map['total']?.toDouble(),
        roundOff = map['roundOff']?.toDouble(),
        grandTotal = map['grandTotal'].toDouble(),
            payment = map['payment'] != null ? Payment.fromMap(map['payment']) : null,

        type = OrderType.values
            .singleWhere((element) => element.id == map['type']),
            previousDue = map['previousDue']?.toDouble(),
    payable = (map['grandTotal'] + (map['previousDue'] ?? 0)) - (map['payment']?.amount ?? 0);

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'customerPhone': customer?.phone,
      'products': products.map((e) => e.id).toList(),
      'timestamp': timestamp.millisecondsSinceEpoch,
      'subtotal': subtotal,
      'taxTotal': taxTotal,
      'total': total,
      'roundOff': roundOff,
      'grandTotal': grandTotal,
      'payment': payment?.toMap(),
      'type': type.id,
      'previousDue': previousDue,
      'payable': payable,
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
      'total': row.elementAt(9),
      'roundOff': row.elementAt(8),
      'grandTotal': row.elementAt(6),
      'payment': row.elementAt(7),
      'type': row.elementAt(10),
      'previousDue': row.elementAt(11),
      'payable': row.elementAt(12),
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
      map['total'],
      map['roundOff'],
      map['grandTotal'],
      map['type'],
      map['previousDue'],
      map['payable'],
    ];
  }
}
