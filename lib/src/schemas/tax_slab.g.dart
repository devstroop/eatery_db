// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_slab.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaxSlabAdapter extends TypeAdapter<TaxSlab> {
  @override
  final int typeId = 111;

  @override
  TaxSlab read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaxSlab(
      name: fields[0] as String,
      rate: fields[1] as double,
      type: fields[2] as TaxType,
    );
  }

  @override
  void write(BinaryWriter writer, TaxSlab obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.rate)
      ..writeByte(2)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxSlabAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
