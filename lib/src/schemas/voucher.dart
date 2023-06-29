import 'package:eatery_db/eatery_db.dart';

part 'voucher.g.dart';

@HiveType(typeId: voucherSchemaIndex)
class Voucher extends HiveObject {
  @HiveField(0)
  int companyKey; // Multi company identification
  @HiveField(1)
  VoucherType voucherType;
  @HiveField(2)
  Master master; // model
  @HiveField(3)
  DateTime createdAt; // obj
  @HiveField(4)
  DateTime? updatedAt; // obj
  @HiveField(5)
  double taxable;
  @HiveField(6)
  double? taxTotal;
  @HiveField(7)
  double? discountTotal;
  @HiveField(8)
  double? serviceCharges;
  @HiveField(9)
  double? otherCharges;
  @HiveField(10)
  double? roundOff;
  @HiveField(11)
  double finalTotal;
  @HiveField(12)
  bool isPaid;
  @HiveField(13)
  bool isClosed;
  @HiveField(14)
  SaleOrderType saleOrderType; // enum

  Voucher(
      {required this.voucherType,
      required this.master,
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
      required this.saleOrderType}) : companyKey = EateryDB.instance.openedCompany?.key, createdAt = DateTime.now();

  Voucher.fromMap(Map<String, dynamic> map)
      : companyKey = map['companyKey'],
        voucherType = map['voucherType'],
        master = Master.fromMap(map['master']),
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
        saleOrderType = SaleOrderType.values[map['type']];

  Map<String, Object?> toMap() {
    return {
      'companyKey': companyKey,
      'voucherType': voucherType,
      'customer': master.toMap(),
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
      'type': saleOrderType.index,
    };
  }
}
