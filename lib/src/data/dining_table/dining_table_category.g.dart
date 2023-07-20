// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dining_table_category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiningTableCategoryAdapter extends TypeAdapter<DiningTableCategory> {
  @override
  final int typeId = 3;

  @override
  DiningTableCategory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiningTableCategory(
      id: fields[0] as int,
      name: fields[1] as String,
      description: fields[2] as String?,
      image: fields[3] as String?,
      isActive: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DiningTableCategory obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiningTableCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
