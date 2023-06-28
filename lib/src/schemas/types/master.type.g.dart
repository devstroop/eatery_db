// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MasterTypeAdapter extends TypeAdapter<MasterType> {
  @override
  final int typeId = 71;

  @override
  MasterType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MasterType.customer;
      case 1:
        return MasterType.supplier;
      default:
        return MasterType.customer;
    }
  }

  @override
  void write(BinaryWriter writer, MasterType obj) {
    switch (obj) {
      case MasterType.customer:
        writer.writeByte(0);
        break;
      case MasterType.supplier:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MasterTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
