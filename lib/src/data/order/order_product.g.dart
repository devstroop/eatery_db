// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderProductAdapter extends TypeAdapter<OrderProduct> {
  @override
  final int typeId = 24;

  @override
  OrderProduct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderProduct(
      orderId: fields[1] as int,
      productName: fields[2] as String,
      quantity: fields[3] as int,
      price: fields[4] as double,
      tax: fields[5] as double,
      total: fields[6] as double,
      discount: fields[7] as double,
      grandTotal: fields[8] as double,
    )..id = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, OrderProduct obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.orderId)
      ..writeByte(2)
      ..write(obj.productName)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.tax)
      ..writeByte(6)
      ..write(obj.total)
      ..writeByte(7)
      ..write(obj.discount)
      ..writeByte(8)
      ..write(obj.grandTotal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
