// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dining_table_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiningTableStatusAdapter extends TypeAdapter<DiningTableStatus> {
  @override
  final int typeId = 23;

  @override
  DiningTableStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DiningTableStatus.available;
      case 1:
        return DiningTableStatus.occupied;
      case 2:
        return DiningTableStatus.reserved;
      case 3:
        return DiningTableStatus.inactive;
      default:
        return DiningTableStatus.available;
    }
  }

  @override
  void write(BinaryWriter writer, DiningTableStatus obj) {
    switch (obj) {
      case DiningTableStatus.available:
        writer.writeByte(0);
        break;
      case DiningTableStatus.occupied:
        writer.writeByte(1);
        break;
      case DiningTableStatus.reserved:
        writer.writeByte(2);
        break;
      case DiningTableStatus.inactive:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiningTableStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
