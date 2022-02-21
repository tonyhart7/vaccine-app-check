part of 'app_utils.dart';

class AppErrorHandler {
  String status;
  String? message;
  AppErrorHandler({
    required this.status,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
    };
  }

  factory AppErrorHandler.fromMap(Map<String, dynamic> map) {
    return AppErrorHandler(
      status: map['status'] ?? false,
      message: map['message'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AppErrorHandler.fromJson(String source) =>
      AppErrorHandler.fromMap(json.decode(source));
}
