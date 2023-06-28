// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 60;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      sku: fields[0] as int,
      name: fields[1] as String,
      categoryId: fields[2] as int?,
      description: fields[3] as String?,
      image: fields[4] as String?,
      mrpPrice: fields[5] as double,
      salePrice: fields[6] as double?,
      taxSlabId: fields[7] as int?,
      foodType: fields[8] as FoodType?,
      type: fields[9] as ProductType,
      isActive: fields[10] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.sku)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.categoryId)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.mrpPrice)
      ..writeByte(6)
      ..write(obj.salePrice)
      ..writeByte(7)
      ..write(obj.taxSlabId)
      ..writeByte(8)
      ..write(obj.foodType)
      ..writeByte(9)
      ..write(obj.type)
      ..writeByte(10)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
