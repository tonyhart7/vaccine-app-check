import 'dart:convert';

import 'package:flutter/foundation.dart';

class RecordVaccine {
  final List<VaccineData?> data;
  final String message;
  final String status;
  RecordVaccine({
    required this.data,
    required this.message,
    required this.status,
  });

  RecordVaccine copyWith({
    List<VaccineData?>? data,
    String? message,
    String? status,
  }) {
    return RecordVaccine(
      data: data ?? this.data,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x?.toMap()).toList(),
      'message': message,
      'status': status,
    };
  }

  factory RecordVaccine.fromMap(Map<String, dynamic> map) {
    return RecordVaccine(
      data: List<VaccineData?>.from(
          map['data']?.map((x) => VaccineData.fromMap(x))),
      message: map['message'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RecordVaccine.fromJson(String source) =>
      RecordVaccine.fromMap(json.decode(source));

  @override
  String toString() =>
      'RecordVaccine(data: $data, message: $message, status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RecordVaccine &&
        listEquals(other.data, data) &&
        other.message == message &&
        other.status == status;
  }

  @override
  int get hashCode => data.hashCode ^ message.hashCode ^ status.hashCode;
}

class VaccineData {
  final int id;

  final String fullname;
  final String passport;
  final String state;
  final String city;
  final String district;
  final String fulladress;
  final String timestamp;
  VaccineData({
    required this.id,
    required this.fullname,
    required this.passport,
    required this.state,
    required this.city,
    required this.district,
    required this.fulladress,
    required this.timestamp,
  });

  VaccineData copyWith({
    int? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    String? fullname,
    String? passport,
    String? state,
    String? city,
    String? district,
    String? fulladress,
    String? timestamp,
  }) {
    return VaccineData(
      id: id ?? this.id,
      fullname: fullname ?? this.fullname,
      passport: passport ?? this.passport,
      state: state ?? this.state,
      city: city ?? this.city,
      district: district ?? this.district,
      fulladress: fulladress ?? this.fulladress,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ID': id,
      'fullname': fullname,
      'passport': passport,
      'state': state,
      'city': city,
      'district': district,
      'fulladress': fulladress,
      'timestamp': timestamp,
    };
  }

  factory VaccineData.fromMap(Map<String, dynamic> map) {
    return VaccineData(
      id: map['ID']?.toInt() ?? 0,
      fullname: map['fullname'] ?? '',
      passport: map['passport'] ?? '',
      state: map['state'] ?? '',
      city: map['city'] ?? '',
      district: map['district'] ?? '',
      fulladress: map['fulladress'] ?? '',
      timestamp: map['timestamp'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory VaccineData.fromJson(String source) =>
      VaccineData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'VaccineData(id: $id, fullname: $fullname, passport: $passport, state: $state, city: $city, district: $district, fulladress: $fulladress, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VaccineData &&
        other.id == id &&
        other.fullname == fullname &&
        other.passport == passport &&
        other.state == state &&
        other.city == city &&
        other.district == district &&
        other.fulladress == fulladress &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        fullname.hashCode ^
        passport.hashCode ^
        state.hashCode ^
        city.hashCode ^
        district.hashCode ^
        fulladress.hashCode ^
        timestamp.hashCode;
  }
}
