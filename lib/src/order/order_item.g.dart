// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderItemAdapter extends TypeAdapter<OrderItem> {
  @override
  final int typeId = 41;

  @override
  OrderItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderItem(
      id: fields[0] as int,
      orderId: fields[1] as int,
      name: fields[2] as String,
      description: fields[3] as String?,
      image: fields[4] as String?,
      mrpPrice: fields[5] as double?,
      salePrice: fields[6] as double?,
      taxSlab: fields[7] as TaxSlab?,
      foodType: fields[8] as FoodType,
    );
  }

  @override
  void write(BinaryWriter writer, OrderItem obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.orderId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.mrpPrice)
      ..writeByte(6)
      ..write(obj.salePrice)
      ..writeByte(7)
      ..write(obj.taxSlab)
      ..writeByte(8)
      ..write(obj.foodType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
