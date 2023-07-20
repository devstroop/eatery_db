// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dining_table.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiningTableAdapter extends TypeAdapter<DiningTable> {
  @override
  final int typeId = 2;

  @override
  DiningTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiningTable(
      name: fields[0] as String,
      categoryId: fields[1] as int?,
      description: fields[2] as String?,
      image: fields[3] as String?,
      orderId: fields[4] as int?,
      isActive: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DiningTable obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.categoryId)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.orderId)
      ..writeByte(5)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiningTableAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
