import 'package:eatery_db/eatery_db.dart';
part 'saleOrder.type.g.dart';

@HiveType(typeId: 5)
enum SaleOrderType {
  @HiveField(0)
  dine,
  @HiveField(1)
  delivery,
  @HiveField(2)
  takeout
}

