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
      name: fields[1] as String,
      category: fields[2] as DiningTableCategory?,
      description: fields[3] as String?,
      orderId: fields[4] as int?,
      capacity: fields[5] as int?,
      status: fields[6] as DiningTableStatus,
      customerPhone: fields[7] as String?,
    )..id = fields[0] as int?;
  }

  @override
  void write(BinaryWriter writer, DiningTable obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.orderId)
      ..writeByte(5)
      ..write(obj.capacity)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.customerPhone);
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
