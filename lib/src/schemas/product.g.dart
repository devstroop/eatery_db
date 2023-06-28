// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 108;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      sku: fields[1] as int?,
      name: fields[2] as String,
      categoryId: fields[3] as int?,
      description: fields[4] as String?,
      image: fields[5] as String?,
      mrpPrice: fields[6] as double,
      salePrice: fields[7] as double?,
      taxSlabId: fields[8] as int?,
      foodType: fields[9] as FoodType?,
      type: fields[10] as ProductType,
      isActive: fields[11] as bool,
    )..companyKey = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.companyKey)
      ..writeByte(1)
      ..write(obj.sku)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.categoryId)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.mrpPrice)
      ..writeByte(7)
      ..write(obj.salePrice)
      ..writeByte(8)
      ..write(obj.taxSlabId)
      ..writeByte(9)
      ..write(obj.foodType)
      ..writeByte(10)
      ..write(obj.type)
      ..writeByte(11)
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
