// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxEdition.type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaxEditionAdapter extends TypeAdapter<TaxEditionType> {
  @override
  final int typeId = 8;

  @override
  TaxEditionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TaxEditionType.gst;
      case 1:
        return TaxEditionType.vat;
      default:
        return TaxEditionType.gst;
    }
  }

  @override
  void write(BinaryWriter writer, TaxEditionType obj) {
    switch (obj) {
      case TaxEditionType.gst:
        writer.writeByte(0);
        break;
      case TaxEditionType.vat:
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
