// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderAdapter extends TypeAdapter<Order> {
  @override
  final int typeId = 40;

  @override
  Order read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Order(
      id: fields[0] as int,
      customer: fields[1] as Customer,
      createdAt: fields[2] as DateTime,
      updatedAt: fields[3] as DateTime?,
      taxable: fields[4] as double,
      taxTotal: fields[5] as double?,
      discountTotal: fields[6] as double?,
      serviceCharges: fields[7] as double?,
      otherCharges: fields[8] as double?,
      roundOff: fields[9] as double?,
      finalTotal: fields[10] as double,
      type: fields[11] as OrderType,
    );
  }

  @override
  void write(BinaryWriter writer, Order obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.customer)
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
