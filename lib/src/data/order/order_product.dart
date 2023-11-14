import 'package:eatery_db/eatery_db.dart';

part 'order_product.g.dart';

@HiveType(typeId: TypeIndex.orderProduct)
class OrderProduct extends HiveObject{
  @HiveField(0)
  int? id;
  @HiveField(1)
  int orderId;
  @HiveField(2)
  String productName;
  @HiveField(3)
  int quantity;
  @HiveField(4)
  double price;
  @HiveField(5)
  double tax;
  @HiveField(6)
  double total;
  @HiveField(7)
  double discount;
  @HiveField(8)
  double grandTotal;

  OrderProduct({
    required this.orderId,
    required this.productName,
    required this.quantity,
    required this.price,
    required this.tax,
    required this.total,
    required this.discount,
    required this.grandTotal,
  }) : id = EateryDB.instance.orderProductBox?.nextId();
}