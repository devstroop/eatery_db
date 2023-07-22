// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StaffTypeAdapter extends TypeAdapter<StaffType> {
  @override
  final int typeId = 17;

  @override
  StaffType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return StaffType.waiter;
      case 1:
        return StaffType.chef;
      case 2:
        return StaffType.driver;
      case 3:
        return StaffType.other;
      default:
        return StaffType.waiter;
    }
  }

  @override
  void write(BinaryWriter writer, StaffType obj) {
    switch (obj) {
      case StaffType.waiter:
        writer.writeByte(0);
        break;
      case StaffType.chef:
        writer.writeByte(1);
        break;
      case StaffType.driver:
        writer.writeByte(2);
        break;
      case StaffType.other:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StaffTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
