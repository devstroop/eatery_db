// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompanyAdapter extends TypeAdapter<Company> {
  @override
  final int typeId = 0;

  @override
  Company read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Company(
      logo: fields[1] as String?,
      name: fields[2] as String,
      email: fields[3] as String,
      phone: fields[4] as String,
      address: fields[5] as String,
      password: fields[6] as String,
      edition: fields[7] as Edition,
      currencyId: fields[8] as int?,
      foodLicenseNo: fields[10] as String?,
      salesTaxNumber: fields[9] as String?,
      subscriptionId: fields[11] as int?,
    )..id = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, Company obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.logo)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.password)
      ..writeByte(7)
      ..write(obj.edition)
      ..writeByte(8)
      ..write(obj.currencyId)
      ..writeByte(9)
      ..write(obj.salesTaxNumber)
      ..writeByte(10)
      ..write(obj.foodLicenseNo)
      ..writeByte(11)
      ..write(obj.subscriptionId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
