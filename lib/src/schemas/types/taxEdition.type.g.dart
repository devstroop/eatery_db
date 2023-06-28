// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxEdition.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaxEditionAdapter extends TypeAdapter<TaxEdition> {
  @override
  final int typeId = 2;

  @override
  TaxEdition read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TaxEdition.gst;
      case 1:
        return TaxEdition.vat;
      default:
        return TaxEdition.gst;
    }
  }

  @override
  void write(BinaryWriter writer, TaxEdition obj) {
    switch (obj) {
      case TaxEdition.gst:
        writer.writeByte(0);
        break;
      case TaxEdition.vat:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxEditionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
