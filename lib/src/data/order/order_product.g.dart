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
      orderId: fields[1] as int?,
      productId: fields[2] as int?,
      productName: fields[3] as String,
      quantity: fields[4] as int,
      price: fields[5] as double,
      subTotal: fields[6] as double,
      taxRate: fields[9] as double?,
      taxAmount: fields[10] as double?,
      discountRate: fields[7] as double?,
      discountAmount: fields[8] as double?,
      total: fields[11] as double,
    )..id = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, OrderProduct obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.orderId)
      ..writeByte(2)
      ..write(obj.productId)
      ..writeByte(3)
      ..write(obj.productName)
      ..writeByte(4)
      ..write(obj.quantity)
      ..writeByte(5)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.subTotal)
      ..writeByte(7)
      ..write(obj.discountRate)
      ..writeByte(8)
      ..write(obj.discountAmount)
      ..writeByte(9)
      ..write(obj.taxRate)
      ..writeByte(10)
      ..write(obj.taxAmount)
      ..writeByte(11)
      ..write(obj.total);
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
