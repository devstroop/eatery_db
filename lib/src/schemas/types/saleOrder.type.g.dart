// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saleOrder.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaleOrderTypeAdapter extends TypeAdapter<SaleOrderType> {
  @override
  final int typeId = 42;

  @override
  SaleOrderType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SaleOrderType.dine;
      case 1:
        return SaleOrderType.delivery;
      case 2:
        return SaleOrderType.takeout;
      default:
        return SaleOrderType.dine;
    }
  }

  @override
  void write(BinaryWriter writer, SaleOrderType obj) {
    switch (obj) {
      case SaleOrderType.dine:
        writer.writeByte(0);
        break;
      case SaleOrderType.delivery:
        writer.writeByte(1);
        break;
      case SaleOrderType.takeout:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaleOrderTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
