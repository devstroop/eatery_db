// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/productCategory.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductCategoryAdapter extends TypeAdapter<ProductCategory> {
  @override
  final int typeId = 61;

  @override
  ProductCategory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductCategory(
      id: fields[0] as int,
      name: fields[1] as String,
      description: fields[2] as String?,
      image: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductCategory obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
