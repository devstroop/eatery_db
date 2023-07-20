// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waiter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WaiterAdapter extends TypeAdapter<Waiter> {
  @override
  final int typeId = 16;

  @override
  Waiter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Waiter(
      name: fields[0] as String,
      photo: fields[1] as String?,
      phone: fields[2] as String?,
      isActive: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Waiter obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.photo)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WaiterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
