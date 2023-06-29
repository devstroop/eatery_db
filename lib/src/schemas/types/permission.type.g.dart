// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PermissionTypeAdapter extends TypeAdapter<PermissionType> {
  @override
  final int typeId = 106;

  @override
  PermissionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PermissionType.readOnly;
      case 1:
        return PermissionType.readWrite;
      case 2:
        return PermissionType.readWriteUpdate;
      case 3:
        return PermissionType.readWriteUpdateDelete;
      default:
        return PermissionType.readOnly;
    }
  }

  @override
  void write(BinaryWriter writer, PermissionType obj) {
    switch (obj) {
      case PermissionType.readOnly:
        writer.writeByte(0);
        break;
      case PermissionType.readWrite:
        writer.writeByte(1);
        break;
      case PermissionType.readWriteUpdate:
        writer.writeByte(2);
        break;
      case PermissionType.readWriteUpdateDelete:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PermissionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
