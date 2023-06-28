// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../types/voucher.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VoucherTypeAdapter extends TypeAdapter<VoucherType> {
  @override
  final int typeId = 42;

  @override
  VoucherType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return VoucherType.sale;
      case 1:
        return VoucherType.purchase;
      case 2:
        return VoucherType.saleReturn;
      case 3:
        return VoucherType.purchaseReturn;
      default:
        return VoucherType.sale;
    }
  }

  @override
  void write(BinaryWriter writer, VoucherType obj) {
    switch (obj) {
      case VoucherType.sale:
        writer.writeByte(0);
        break;
      case VoucherType.purchase:
        writer.writeByte(1);
        break;
      case VoucherType.saleReturn:
        writer.writeByte(2);
        break;
      case VoucherType.purchaseReturn:
        writer.writeByte(3);
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
