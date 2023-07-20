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
      logo: fields[0] as String?,
      name: fields[1] as String,
      email: fields[2] as String,
      phone: fields[3] as String,
      address: fields[4] as String,
      password: fields[5] as String,
      edition: fields[6] as Edition,
      currencyId: fields[7] as int?,
      defaultTaxSlabId: fields[10] as int?,
      foodLicenseNo: fields[9] as String?,
      salesTaxNumber: fields[8] as String?,
      subscriptionId: fields[11] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Company obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.logo)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.password)
      ..writeByte(6)
      ..write(obj.edition)
      ..writeByte(7)
      ..write(obj.currencyId)
      ..writeByte(8)
      ..write(obj.salesTaxNumber)
      ..writeByte(9)
      ..write(obj.foodLicenseNo)
      ..writeByte(10)
      ..write(obj.defaultTaxSlabId)
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
