// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../types/tax.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaxTypeAdapter extends TypeAdapter<TaxType> {
  @override
  final int typeId = 81;

  @override
  TaxType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TaxType.inclusive;
      case 1:
        return TaxType.exclusive;
      default:
        return TaxType.inclusive;
    }
  }

  @override
  void write(BinaryWriter writer, TaxType obj) {
    switch (obj) {
      case TaxType.inclusive:
        writer.writeByte(0);
        break;
      case TaxType.exclusive:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
