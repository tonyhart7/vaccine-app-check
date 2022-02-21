import 'dart:convert';

class Profile {
  final DataUser? data;
  final String? message;
  final String status;
  Profile({
    this.data,
    this.message,
    required this.status,
  });

  Profile copyWith({
    DataUser? data,
    String? message,
    String? status,
  }) {
    return Profile(
      data: data ?? this.data,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data?.toMap(),
      'message': message,
      'status': status,
    };
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      data: map['data'] != null ? DataUser.fromMap(map['data']) : null,
      message: map['message'],
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) =>
      Profile.fromMap(json.decode(source));

  @override
  String toString() =>
      'Profile(data: $data, message: $message, status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Profile &&
        other.data == data &&
        other.message == message &&
        other.status == status;
  }

  @override
  int get hashCode => data.hashCode ^ message.hashCode ^ status.hashCode;
}

class DataUser {
  final int id;
  final String username;
  final String email;
  final String password;
  final String names;
  final String status;
  DataUser({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.names,
    required this.status,
  });

  DataUser copyWith({
    int? id,
    String? username,
    String? email,
    String? password,
    String? names,
    String? status,
  }) {
    return DataUser(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      names: names ?? this.names,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ID': id,
      'username': username,
      'email': email,
      'password': password,
      'names': names,
      'status': status,
    };
  }

  factory DataUser.fromMap(Map<String, dynamic> map) {
    return DataUser(
      id: map['ID']?.toInt() ?? 0,
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      names: map['names'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DataUser.fromJson(String source) =>
      DataUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Data(id: $id,  username: $username, email: $email, password: $password, names: $names, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DataUser &&
        other.id == id &&
        other.username == username &&
        other.email == email &&
        other.password == password &&
        other.names == names &&
        other.status == status;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        email.hashCode ^
        password.hashCode ^
        names.hashCode ^
        status.hashCode;
  }
}
