import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vaccine/src/utils/app_utils.dart';

import 'model/user.dart';
import 'auth_repository.dart';

class AuthController extends GetxController {
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  late User currentUser;

  final username = TextEditingController();
  final passText = TextEditingController();
  final emailORNumber = TextEditingController();

  loginUser(BuildContext context) async {
    if (username.text.isEmpty) {
      Get.rawSnackbar(message: 'username tidak boleh kosong');
      return;
    }
    if (passText.text.isEmpty) {
      Get.rawSnackbar(message: 'password tidak boleh kosong');
      return;
    }

    String? message =
        await AuthRepository().loginUser(emailORNumber.text, passText.text);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message!, style: AppStyle.textBodyWhite),
          backgroundColor: Colors.red,
        ),
      );
  }

  registerUser(BuildContext context) async {
    if (emailORNumber.text.isEmpty) {
      Get.rawSnackbar(message: 'Email Kosong');
      return;
    }
    if (username.text.isEmpty) {
      Get.rawSnackbar(message: 'username invalid');
      return;
    }
    if (passText.text.isEmpty) {
      Get.rawSnackbar(message: 'Password Kosong');
      return;
    }

    String? message = await AuthRepository()
        .registUser(username.text, emailORNumber.text, passText.text);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message!, style: AppStyle.textBodyWhite),
          backgroundColor: Colors.red,
        ),
      );
    username.clear();
    emailORNumber.clear();
    passText.clear();
  }
}
