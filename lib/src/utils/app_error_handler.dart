part of 'app_utils.dart';

class AppErrorHandler {
  String status;
  String? message;
  int? userID;

  AppErrorHandler({
    required this.status,
    this.message,
    this.userID,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'user_id': userID,
    };
  }

  factory AppErrorHandler.fromMap(Map<String, dynamic> map) {
    return AppErrorHandler(
      status: map['status'],
      message: map['message'],
      userID: map['user_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AppErrorHandler.fromJson(String source) =>
      AppErrorHandler.fromMap(json.decode(source));
}
