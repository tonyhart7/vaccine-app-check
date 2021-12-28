// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regist_vaccine.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegistVaccineAdapter extends TypeAdapter<RegistVaccine> {
  @override
  final int typeId = 2;

  @override
  RegistVaccine read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RegistVaccine(
      id: fields[0] as String,
      passportNumber: fields[1] as String,
      state: fields[2] as String,
      city: fields[3] as String,
      district: fields[4] as String,
      fullAddress: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RegistVaccine obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.passportNumber)
      ..writeByte(2)
      ..write(obj.state)
      ..writeByte(3)
      ..write(obj.city)
      ..writeByte(4)
      ..write(obj.district)
      ..writeByte(5)
      ..write(obj.fullAddress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegistVaccineAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
