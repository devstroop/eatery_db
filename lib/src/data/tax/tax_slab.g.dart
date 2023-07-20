// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_slab.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaxSlabAdapter extends TypeAdapter<TaxSlab> {
  @override
  final int typeId = 14;

  @override
  TaxSlab read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaxSlab(
      id: fields[0] as int,
      name: fields[1] as String,
      rate: fields[2] as double,
      type: fields[3] as TaxType,
    );
  }

  @override
  void write(BinaryWriter writer, TaxSlab obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.rate)
      ..writeByte(3)
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
