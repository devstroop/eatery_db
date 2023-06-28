// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../types/order.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderTypeAdapter extends TypeAdapter<OrderType> {
  @override
  final int typeId = 42;

  @override
  OrderType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return OrderType.dine;
      case 1:
        return OrderType.delivery;
      case 2:
        return OrderType.takeout;
      default:
        return OrderType.dine;
    }
  }

  @override
  void write(BinaryWriter writer, OrderType obj) {
    switch (obj) {
      case OrderType.dine:
        writer.writeByte(0);
        break;
      case OrderType.delivery:
        writer.writeByte(1);
        break;
      case OrderType.takeout:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
