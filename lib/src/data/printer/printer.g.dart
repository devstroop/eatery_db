// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PrinterAdapter extends TypeAdapter<Printer> {
  @override
  final int typeId = 6;

  @override
  Printer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Printer(
      name: fields[0] as String,
      bluetoothAddress: fields[1] as String?,
      usbVendorId: fields[2] as String?,
      usbProductId: fields[3] as String?,
      type: fields[4] as PrinterType?,
    );
  }

  @override
  void write(BinaryWriter writer, Printer obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.bluetoothAddress)
      ..writeByte(2)
      ..write(obj.usbVendorId)
      ..writeByte(3)
      ..write(obj.usbProductId)
      ..writeByte(4)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrinterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
