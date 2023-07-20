// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderAdapter extends TypeAdapter<Order> {
  @override
  final int typeId = 4;

  @override
  Order read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Order(
      customer: fields[0] as Customer,
      updatedAt: fields[2] as DateTime?,
      taxable: fields[3] as double,
      taxTotal: fields[4] as double?,
      discountTotal: fields[5] as double?,
      serviceCharges: fields[6] as double?,
      otherCharges: fields[7] as double?,
      roundOff: fields[8] as double?,
      finalTotal: fields[9] as double,
      isPaid: fields[10] as bool,
      isClosed: fields[11] as bool,
      type: fields[12] as OrderType,
    )..createdAt = fields[1] as DateTime;
  }

  @override
  void write(BinaryWriter writer, Order obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.customer)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.updatedAt)
      ..writeByte(3)
      ..write(obj.taxable)
      ..writeByte(4)
      ..write(obj.taxTotal)
      ..writeByte(5)
      ..write(obj.discountTotal)
      ..writeByte(6)
      ..write(obj.serviceCharges)
      ..writeByte(7)
      ..write(obj.otherCharges)
      ..writeByte(8)
      ..write(obj.roundOff)
      ..writeByte(9)
      ..write(obj.finalTotal)
      ..writeByte(10)
      ..write(obj.isPaid)
      ..writeByte(11)
      ..write(obj.isClosed)
      ..writeByte(12)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
