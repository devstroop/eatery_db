// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PermissionAdapter extends TypeAdapter<Permission> {
  @override
  final int typeId = 106;

  @override
  Permission read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Permission(
      readAll: fields[0] as bool,
      read: fields[1] as bool,
      write: fields[2] as bool,
      update: fields[3] as bool,
      delete: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Permission obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.readAll)
      ..writeByte(1)
      ..write(obj.read)
      ..writeByte(2)
      ..write(obj.write)
      ..writeByte(3)
      ..write(obj.update)
      ..writeByte(4)
      ..write(obj.delete);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PermissionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
