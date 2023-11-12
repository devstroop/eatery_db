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
      customer: fields[1] as Customer?,
      timestamp: fields[2] as DateTime,
      products: (fields[3] as List).cast<Product>(),
      subtotal: fields[4] as double,
      taxTotal: fields[5] as double,
      finalTotal: fields[6] as double,
      roundOff: fields[7] as double,
      grandTotal: fields[8] as double,
      payment: fields[9] as Payment?,
      type: fields[10] as OrderType,
    )..id = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, Order obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.customer)
      ..writeByte(2)
      ..write(obj.timestamp)
      ..writeByte(3)
      ..write(obj.products)
      ..writeByte(4)
      ..write(obj.subtotal)
      ..writeByte(5)
      ..write(obj.taxTotal)
      ..writeByte(6)
      ..write(obj.finalTotal)
      ..writeByte(7)
      ..write(obj.roundOff)
      ..writeByte(8)
      ..write(obj.grandTotal)
      ..writeByte(9)
      ..write(obj.payment)
      ..writeByte(10)
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
