import 'package:eatery_db/eatery_db.dart';

part 'order.g.dart';

@HiveType(typeId: TypeIndex.order)
class Order extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  int customerId;
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

  Order({
    required this.customerId,
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
    required this.type})
      : createdAt = DateTime.now(),
        id = EateryDB.instance.orderBox?.nextId();

  Order.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        customerId = map['customer'],
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
      'id': id,
      'customerId': customerId,
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

  static Order fromIterable(Iterable<dynamic> row) {
    return Order.fromMap({
      'id': row.elementAt(0),
      'customerId': row.elementAt(1),
      'createdAt': row.elementAt(2),
      'updatedAt': row.elementAt(3),
      'taxable': row.elementAt(4),
      'taxTotal': row.elementAt(5),
      'discountTotal': row.elementAt(6),
      'serviceCharges': row.elementAt(7),
      'otherCharges': row.elementAt(8),
      'roundOff': row.elementAt(9),
      'finalTotal': row.elementAt(10),
      'isPaid': row.elementAt(11),
      'isClosed': row.elementAt(12),
      'type': row.elementAt(13),
    });
  }

  List<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['customerId'],
      map['createdAt'],
      map['updatedAt'],
      map['taxable'],
      map['taxTotal'],
      map['discountTotal'],
      map['serviceCharges'],
      map['otherCharges'],
      map['roundOff'],
      map['finalTotal'],
      map['isPaid'],
      map['isClosed'],
      map['type'],
    ];
  }
}
