// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'k_currency.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KCurrencyAdapter extends TypeAdapter<KCurrency> {
  @override
  final int typeId = 19;

  @override
  KCurrency read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KCurrency(
      name: fields[1] as String,
      code: fields[0] as String,
      symbol: fields[2] as String,
      flag: fields[3] as String?,
      number: fields[4] as int,
      decimalDigits: fields[5] as int,
      namePlural: fields[6] as String,
      decimalSeparator: fields[7] as String,
      thousandsSeparator: fields[8] as String,
      symbolOnLeft: fields[9] as bool,
      spaceBetweenAmountAndSymbol: fields[10] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, KCurrency obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.symbol)
      ..writeByte(3)
      ..write(obj.flag)
      ..writeByte(4)
      ..write(obj.number)
      ..writeByte(5)
      ..write(obj.decimalDigits)
      ..writeByte(6)
      ..write(obj.namePlural)
      ..writeByte(7)
      ..write(obj.decimalSeparator)
      ..writeByte(8)
      ..write(obj.thousandsSeparator)
      ..writeByte(9)
      ..write(obj.symbolOnLeft)
      ..writeByte(10)
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
