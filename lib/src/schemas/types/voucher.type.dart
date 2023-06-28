import 'package:eatery_db/eatery_db.dart';
part 'voucher.type.g.dart';

@HiveType(typeId: 10)
enum VoucherType {
  @HiveField(0, defaultValue: true)
  saleOrder,
  @HiveField(1)
  purchaseOrder,
  @HiveField(2)
  sale,
  @HiveField(3)
  purchase,
  @HiveField(4)
  saleReturn,
  @HiveField(5)
  purchaseReturn,
}
