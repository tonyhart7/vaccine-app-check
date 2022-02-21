import 'package:dio/dio.dart';

import 'package:vaccine/src/utils/app_utils.dart';

class AuthRepository {
  Future<String?> registUser(
    String userName,
    String emailUser,
    String passwdUser,
  ) async {
    var formData = FormData.fromMap({
      'username': userName,
      'email': emailUser,
      'password': passwdUser,
    });
    try {
      var response =
          await Dio().post(DataServices().baseUrl + "api/user", data: formData);
      if (response.statusCode == 200) {
        return AppErrorHandler.fromMap(response.data).message;
      } else {
        return AppErrorHandler.fromMap(response.data).message;
      }
    } on DioError catch (e) {
      return AppErrorHandler.fromMap(e.response?.data).message;
    }
  }

  Future<String?> loginUser(
    String username,
    String passwdUser,
  ) async {
    FormData formData = FormData.fromMap({
      'identity': username,
      'password': passwdUser,
    });
    try {
      var response = await Dio()
          .post(DataServices().baseUrl + "api/auth/login", data: formData);
      if (response.statusCode == 200) {
        await DataServices().setAccessKey(response.data['data']);
        return AppErrorHandler.fromMap(response.data).message;
      } else {
        return AppErrorHandler.fromMap(response.data).message;
      }
    } on DioError catch (e) {
      return AppErrorHandler.fromMap(e.response?.data).message;
    }
  }
}
