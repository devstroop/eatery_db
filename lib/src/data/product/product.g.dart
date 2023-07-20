// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 8;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      name: fields[0] as String,
      categoryId: fields[1] as int?,
      description: fields[2] as String?,
      image: fields[3] as String?,
      mrpPrice: fields[4] as double,
      salePrice: fields[5] as double?,
      taxSlabId: fields[6] as int?,
      foodType: fields[7] as FoodType?,
      type: fields[8] as ProductType,
      isActive: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.categoryId)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.mrpPrice)
      ..writeByte(5)
      ..write(obj.salePrice)
      ..writeByte(6)
      ..write(obj.taxSlabId)
      ..writeByte(7)
      ..write(obj.foodType)
      ..writeByte(8)
      ..write(obj.type)
      ..writeByte(9)
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
