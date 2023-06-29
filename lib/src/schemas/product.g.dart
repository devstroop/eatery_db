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
      barCode: fields[0] as String?,
      qrCode: fields[1] as String?,
      tags: (fields[2] as List).cast<String>(),
      name: fields[3] as String,
      categoryId: fields[4] as int?,
      description: fields[5] as String?,
      image: fields[6] as String?,
      mrpPrice: fields[7] as double,
      salePrice: fields[8] as double?,
      taxSlabId: fields[9] as int?,
      foodType: fields[10] as FoodType?,
      type: fields[11] as ProductType,
      isActive: fields[12] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.barCode)
      ..writeByte(1)
      ..write(obj.qrCode)
      ..writeByte(2)
      ..write(obj.tags)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.categoryId)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.mrpPrice)
      ..writeByte(8)
      ..write(obj.salePrice)
      ..writeByte(9)
      ..write(obj.taxSlabId)
      ..writeByte(10)
      ..write(obj.foodType)
      ..writeByte(11)
      ..write(obj.type)
      ..writeByte(12)
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
