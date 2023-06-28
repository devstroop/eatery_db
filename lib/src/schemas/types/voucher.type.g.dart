// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VoucherTypeAdapter extends TypeAdapter<VoucherType> {
  @override
  final int typeId = 10;

  @override
  VoucherType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return VoucherType.saleOrder;
      case 1:
        return VoucherType.purchaseOrder;
      case 2:
        return VoucherType.sale;
      case 3:
        return VoucherType.purchase;
      case 4:
        return VoucherType.saleReturn;
      case 5:
        return VoucherType.purchaseReturn;
      default:
        return VoucherType.saleOrder;
    }
  }

  @override
  void write(BinaryWriter writer, VoucherType obj) {
    switch (obj) {
      case VoucherType.saleOrder:
        writer.writeByte(0);
        break;
      case VoucherType.purchaseOrder:
        writer.writeByte(1);
        break;
      case VoucherType.sale:
        writer.writeByte(2);
        break;
      case VoucherType.purchase:
        writer.writeByte(3);
        break;
      case VoucherType.saleReturn:
        writer.writeByte(4);
        break;
      case VoucherType.purchaseReturn:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VoucherTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
