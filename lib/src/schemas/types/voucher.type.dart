import 'package:eatery_db/eatery_db.dart';
part 'voucher.type.auto-generated.dart';

@HiveType(typeId: 42)
enum VoucherType {
  @HiveField(0, defaultValue: true)
  sale,
  @HiveField(1)
  purchase,
  @HiveField(2)
  saleOrder,
  @HiveField(3)
  purchaseOrder,
  @HiveField(4)
  saleReturn,
  @HiveField(5)
  purchaseReturn,
}
