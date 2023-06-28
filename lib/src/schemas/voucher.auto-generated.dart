// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VoucherAdapter extends TypeAdapter<Voucher> {
  @override
  final int typeId = 40;

  @override
  Voucher read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Voucher(
      voucherType: fields[0] as VoucherType,
      master: fields[1] as Master,
      updatedAt: fields[3] as DateTime?,
      taxable: fields[4] as double,
      taxTotal: fields[5] as double?,
      discountTotal: fields[6] as double?,
      serviceCharges: fields[7] as double?,
      otherCharges: fields[8] as double?,
      roundOff: fields[9] as double?,
      finalTotal: fields[10] as double,
      isPaid: fields[11] as bool,
      isClosed: fields[12] as bool,
      type: fields[13] as OrderType,
    )..createdAt = fields[2] as DateTime;
  }

  @override
  void write(BinaryWriter writer, Voucher obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.voucherType)
      ..writeByte(1)
      ..write(obj.master)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.updatedAt)
      ..writeByte(4)
      ..write(obj.taxable)
      ..writeByte(5)
      ..write(obj.taxTotal)
      ..writeByte(6)
      ..write(obj.discountTotal)
      ..writeByte(7)
      ..write(obj.serviceCharges)
      ..writeByte(8)
      ..write(obj.otherCharges)
      ..writeByte(9)
      ..write(obj.roundOff)
      ..writeByte(10)
      ..write(obj.finalTotal)
      ..writeByte(11)
      ..write(obj.isPaid)
      ..writeByte(12)
      ..write(obj.isClosed)
      ..writeByte(13)
      ..write(obj.type);
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
