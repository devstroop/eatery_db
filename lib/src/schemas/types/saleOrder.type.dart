import 'package:eatery_db/eatery_db.dart';
part 'saleOrder.type.g.dart';

@HiveType(typeId: saleOrderTypeSchemaIndex)
enum SaleOrderType {
  @HiveField(0)
  dine,
  @HiveField(1)
  delivery,
  @HiveField(2)
  takeout
}

