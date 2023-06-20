// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductTypeAdapter extends TypeAdapter<ProductType> {
  @override
  final int typeId = 63;

  @override
  ProductType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ProductType.kitchenDish;
      case 1:
        return ProductType.inventoryItem;
      default:
        return ProductType.kitchenDish;
    }
  }

  @override
  void write(BinaryWriter writer, ProductType obj) {
    switch (obj) {
      case ProductType.kitchenDish:
        writer.writeByte(0);
        break;
      case ProductType.inventoryItem:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
