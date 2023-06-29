// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diningTable.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiningTableAdapter extends TypeAdapter<DiningTable> {
  @override
  final int typeId = 101;

  @override
  DiningTable read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiningTable(
      name: fields[1] as String,
      categoryId: fields[2] as int?,
      description: fields[3] as String?,
      image: fields[4] as String?,
      orderId: fields[5] as int?,
      isActive: fields[6] as bool,
    )..companyKey = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, DiningTable obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.companyKey)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.categoryId)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.orderId)
      ..writeByte(6)
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
