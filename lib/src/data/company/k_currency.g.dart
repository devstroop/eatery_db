// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'k_currency.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KCurrencyAdapter extends TypeAdapter<KCurrency> {
  @override
  final int typeId = 18;

  @override
  KCurrency read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KCurrency(
      name: fields[2] as String,
      code: fields[1] as String,
      symbol: fields[3] as String,
      flag: fields[4] as String?,
      number: fields[5] as int,
      decimalDigits: fields[6] as int,
      namePlural: fields[7] as String,
      decimalSeparator: fields[8] as String,
      thousandsSeparator: fields[9] as String,
      symbolOnLeft: fields[10] as bool,
      spaceBetweenAmountAndSymbol: fields[11] as bool,
    )..id = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, KCurrency obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.symbol)
      ..writeByte(4)
      ..write(obj.flag)
      ..writeByte(5)
      ..write(obj.number)
      ..writeByte(6)
      ..write(obj.decimalDigits)
      ..writeByte(7)
      ..write(obj.namePlural)
      ..writeByte(8)
      ..write(obj.decimalSeparator)
      ..writeByte(9)
      ..write(obj.thousandsSeparator)
      ..writeByte(10)
      ..write(obj.symbolOnLeft)
      ..writeByte(11)
      ..write(obj.spaceBetweenAmountAndSymbol);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KCurrencyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
