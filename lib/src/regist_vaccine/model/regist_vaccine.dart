import 'dart:convert';

import 'package:hive/hive.dart';

part 'regist_vaccine.g.dart';

@HiveType(typeId: 2)
class RegistVaccine extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String passportNumber;
  @HiveField(2)
  final String state;
  @HiveField(3)
  final String city;
  @HiveField(4)
  final String district;
  @HiveField(5)
  final String fullAddress;
  @HiveField(6)
  final DateTime timeStamp;

  RegistVaccine({
    required this.id,
    required this.passportNumber,
    required this.state,
    required this.city,
    required this.district,
    required this.fullAddress,
    required this.timeStamp,
  });

  RegistVaccine copyWith({
    String? id,
    String? passportNumber,
    String? state,
    String? city,
    String? district,
    String? fullAddress,
    DateTime? timeStamp,
  }) {
    return RegistVaccine(
      id: id ?? this.id,
      passportNumber: passportNumber ?? this.passportNumber,
      state: state ?? this.state,
      city: city ?? this.city,
      district: district ?? this.district,
      fullAddress: fullAddress ?? this.fullAddress,
      timeStamp: timeStamp ?? this.timeStamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'passportNumber': passportNumber,
      'state': state,
      'city': city,
      'district': district,
      'fullAddress': fullAddress,
      'timeStamp': timeStamp.millisecondsSinceEpoch,
    };
  }

  factory RegistVaccine.fromMap(Map<String, dynamic> map) {
    return RegistVaccine(
      id: map['id'] ?? '',
      passportNumber: map['passportNumber'] ?? '',
      state: map['state'] ?? '',
      city: map['city'] ?? '',
      district: map['district'] ?? '',
      fullAddress: map['fullAddress'] ?? '',
      timeStamp: DateTime.fromMillisecondsSinceEpoch(map['timeStamp']),
    );
  }

  String toJson() => json.encode(toMap());

  factory RegistVaccine.fromJson(String source) =>
      RegistVaccine.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RegistVaccine(id: $id, passportNumber: $passportNumber, state: $state, city: $city, district: $district, fullAddress: $fullAddress, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RegistVaccine &&
        other.id == id &&
        other.passportNumber == passportNumber &&
        other.state == state &&
        other.city == city &&
        other.district == district &&
        other.fullAddress == fullAddress &&
        other.timeStamp == timeStamp;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        passportNumber.hashCode ^
        state.hashCode ^
        city.hashCode ^
        district.hashCode ^
        fullAddress.hashCode ^
        timeStamp.hashCode;
  }
}
