// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PrinterTypeAdapter extends TypeAdapter<PrinterType> {
  @override
  final int typeId = 51;

  @override
  PrinterType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PrinterType.bluetooth;
      case 1:
        return PrinterType.usb;
      default:
        return PrinterType.bluetooth;
    }
  }

  @override
  void write(BinaryWriter writer, PrinterType obj) {
    switch (obj) {
      case PrinterType.bluetooth:
        writer.writeByte(0);
        break;
      case PrinterType.usb:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrinterTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
