// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VoucherAdapter extends TypeAdapter<Voucher> {
  @override
  final int typeId = 113;

  @override
  Voucher read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Voucher(
      voucherType: fields[1] as VoucherType,
      master: fields[2] as Master,
      updatedAt: fields[4] as DateTime?,
      taxable: fields[5] as double,
      taxTotal: fields[6] as double?,
      discountTotal: fields[7] as double?,
      serviceCharges: fields[8] as double?,
      otherCharges: fields[9] as double?,
      roundOff: fields[10] as double?,
      finalTotal: fields[11] as double,
      isPaid: fields[12] as bool,
      isClosed: fields[13] as bool,
      saleOrderType: fields[14] as SaleOrderType,
    )
      ..companyKey = fields[0] as int
      ..createdAt = fields[3] as DateTime;
  }

  @override
  void write(BinaryWriter writer, Voucher obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.companyKey)
      ..writeByte(1)
      ..write(obj.voucherType)
      ..writeByte(2)
      ..write(obj.master)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.taxable)
      ..writeByte(6)
      ..write(obj.taxTotal)
      ..writeByte(7)
      ..write(obj.discountTotal)
      ..writeByte(8)
      ..write(obj.serviceCharges)
      ..writeByte(9)
      ..write(obj.otherCharges)
      ..writeByte(10)
      ..write(obj.roundOff)
      ..writeByte(11)
      ..write(obj.finalTotal)
      ..writeByte(12)
      ..write(obj.isPaid)
      ..writeByte(13)
      ..write(obj.isClosed)
      ..writeByte(14)
      ..write(obj.saleOrderType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VoucherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
