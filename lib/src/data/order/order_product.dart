import 'package:eatery_db/eatery_db.dart';

part 'order_product.g.dart';

@HiveType(typeId: TypeIndex.orderProduct)
class OrderProduct extends HiveObject{
  @HiveField(0)
  int? id;
  @HiveField(1)
  int? orderId;
  @HiveField(2)
  int? productId;
  @HiveField(3)
  String productName;
  @HiveField(4)
  int quantity;
  @HiveField(5)
  double price;
  @HiveField(6)
  double subTotal;
  @HiveField(7)
  double? discountRate;
  @HiveField(8)
  double? discountAmount;
  @HiveField(9)
  double? taxRate;
  @HiveField(10)
  double? taxAmount;
  @HiveField(11)
  double total;

  OrderProduct({
    required this.orderId,
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.price,
    required this.subTotal,
    this.taxRate,
    this.taxAmount,
    this.discountRate,
    this.discountAmount,
    required this.total,

  }) : id = EateryDB.instance.orderProductBox?.nextId();

  OrderProduct.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        orderId = map['orderId'],
        productId = map['productId'],
        productName = map['productName'],
        quantity = map['quantity'],
        price = map['price'],
        subTotal = map['subTotal'],
        taxRate = map['taxRate'],
        taxAmount = map['taxAmount'],
        discountRate = map['discountRate'],
        discountAmount = map['discountAmount'],
        total = map['total'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'orderId': orderId,
      'productId': productId,
      'productName': productName,
      'quantity': quantity,
      'price': price,
      'subTotal': subTotal,
      'taxRate': taxRate,
      'taxAmount': taxAmount,
      'discountRate': discountRate,
      'discountAmount': discountAmount,
      'total': total,
    };
  }
}