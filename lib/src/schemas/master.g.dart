// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MasterAdapter extends TypeAdapter<Master> {
  @override
  final int typeId = 106;

  @override
  Master read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Master(
      name: fields[1] as String,
      phone: fields[2] as String?,
      email: fields[3] as String?,
      address: fields[4] as String?,
      landmark: fields[5] as String?,
      latitude: fields[6] as double?,
      longitude: fields[7] as double?,
      isActive: fields[8] as bool,
    )..companyKey = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, Master obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.companyKey)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.landmark)
      ..writeByte(6)
      ..write(obj.latitude)
      ..writeByte(7)
      ..write(obj.longitude)
      ..writeByte(8)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MasterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
