// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EditionAdapter extends TypeAdapter<Edition> {
  @override
  final int typeId = 17;

  @override
  Edition read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Edition.gst;
      case 1:
        return Edition.vat;
      default:
        return Edition.gst;
    }
  }

  @override
  void write(BinaryWriter writer, Edition obj) {
    switch (obj) {
      case Edition.gst:
        writer.writeByte(0);
        break;
      case Edition.vat:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EditionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
