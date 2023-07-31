import 'package:eatery_db/eatery_db.dart';

part 'payment.g.dart';

@HiveType(typeId: TypeIndex.payment)
class Payment extends HiveObject{
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final int? orderId;
  @HiveField(2)
  final DateTime date;
  @HiveField(3)
  final double? amount;
  @HiveField(4)
  final PaymentMode paymentMode;

  Payment({this.id, this.orderId, required this.date, this.amount, required this.paymentMode});

  Payment.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        orderId = map['orderId'],
        date = DateTime.fromMillisecondsSinceEpoch(map['date']),
        amount = map['amount'],
        paymentMode = PaymentMode.values[map['paymentMode']];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'orderId': orderId,
      'date': date.millisecondsSinceEpoch,
      'amount': amount,
      'paymentMode': paymentMode.index
    };
  }

  static Payment fromIterable(Iterable<dynamic> row) {
    return Payment.fromMap({
      'id': row.elementAt(0),
      'orderId': row.elementAt(1),
      'date': row.elementAt(2),
      'amount': row.elementAt(3),
      'paymentMode': row.elementAt(4)
    });
  } 

  List<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['orderId'],
      map['date'],
      map['amount'],
      map['paymentMode']
    ];
  }

}