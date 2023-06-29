// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userPermission.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserPermissionAdapter extends TypeAdapter<UserPermission> {
  @override
  final int typeId = 113;

  @override
  UserPermission read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserPermission(
      userKey: fields[1] as int,
      userRead: fields[2] as bool,
      userWrite: fields[3] as bool,
      userDelete: fields[4] as bool,
      userModify: fields[5] as bool,
      diningTableRead: fields[6] as bool,
      diningTableWrite: fields[7] as bool,
      diningTableDelete: fields[8] as bool,
      diningTableModify: fields[9] as bool,
    )..companyKey = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, UserPermission obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.companyKey)
      ..writeByte(1)
      ..write(obj.userKey)
      ..writeByte(2)
      ..write(obj.userRead)
      ..writeByte(3)
      ..write(obj.userWrite)
      ..writeByte(4)
      ..write(obj.userDelete)
      ..writeByte(5)
      ..write(obj.userModify)
      ..writeByte(6)
      ..write(obj.diningTableRead)
      ..writeByte(7)
      ..write(obj.diningTableWrite)
      ..writeByte(8)
      ..write(obj.diningTableDelete)
      ..writeByte(9)
      ..write(obj.diningTableModify);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserPermissionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
