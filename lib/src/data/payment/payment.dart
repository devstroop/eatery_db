import 'package:eatery_db/eatery_db.dart';

part 'payment.g.dart';

@HiveType(typeId: TypeIndex.payment)
class Payment extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  Order order;
  @HiveField(2)
  DateTime date;
  @HiveField(3)
  double amount;
  @HiveField(4)
  PaymentMode mode;
  @HiveField(5)
  String? reference;
  @HiveField(6)
  String? attachment;

  Payment(
      {required this.order, required this.amount, required this.mode, this.reference, this.attachment})
      :id= EateryDB.instance.paymentBox?.nextId(),
        date = DateTime.now();

  Payment.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        order = EateryDB.instance.orderBox!.values.where((element) => element.id == map['order']).first,
        date = DateTime.fromMillisecondsSinceEpoch(map['date']),
        amount = map['amount'],
        mode = PaymentMode.values[map['mode']],
        reference = map['reference'],
        attachment = map['attachment'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'order': order.id,
      'date': date.millisecondsSinceEpoch,
      'amount': amount,
      'mode': mode.index,
      'reference': reference,
      'attachment': attachment
    };
  }

  static Payment fromIterable(Iterable<dynamic> row) {
    return Payment.fromMap({
      'id': row.elementAt(0),
      'order': row.elementAt(1),
      'date': row.elementAt(2),
      'amount': row.elementAt(3),
      'mode': row.elementAt(4),
      'reference': row.elementAt(5),
      'attachment': row.elementAt(6)
    });
  }

  List<dynamic> toIterable() {
    var map = toMap();
    return [
      map['id'],
      map['order'],
      map['date'],
      map['amount'],
      map['mode'],
      map['reference'],
      map['attachment']
    ];
  }
}