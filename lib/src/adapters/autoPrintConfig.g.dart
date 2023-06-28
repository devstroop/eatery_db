// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/autoPrintConfig.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AutoPrintConfigAdapter extends TypeAdapter<AutoPrintConfig> {
  @override
  final int typeId = 10;

  @override
  AutoPrintConfig read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AutoPrintConfig(
      invoicePrintEnabled: fields[0] as bool?,
      kotPrintEnabled: fields[1] as bool?,
      invoicePrinterId: fields[2] as int?,
      kotPrinterId: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AutoPrintConfig obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.invoicePrintEnabled)
      ..writeByte(1)
      ..write(obj.kotPrintEnabled)
      ..writeByte(2)
      ..write(obj.invoicePrinterId)
      ..writeByte(3)
      ..write(obj.kotPrinterId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AutoPrintConfigAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
