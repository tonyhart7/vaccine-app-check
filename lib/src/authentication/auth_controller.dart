import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vaccine/src/authentication/login_view.dart';
import 'package:vaccine/src/home/home_binding.dart';
import 'package:vaccine/src/home/home_pages/profile_controller.dart';
import 'package:vaccine/src/home/home_view.dart';
import 'package:vaccine/src/utils/app_utils.dart';

import 'auth_repository.dart';

class AuthController extends GetxController {
  ProfileController get profContrl => Get.find();

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

    AppErrorHandler? response =
        await AuthRepository().loginUser(emailORNumber.text, passText.text);

    if (response!.status == "success") {
      Get.offAll(() => const HomeView(), binding: HomeBinding());
      profContrl.getCurrentUser(response.userID.toString());
    }
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

    AppErrorHandler? response = await AuthRepository()
        .registUser(username.text, emailORNumber.text, passText.text);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(response!.message!, style: AppStyle.textBodyWhite),
          backgroundColor: Colors.red,
        ),
      );
    if (response.status == "success") {
      username.clear();
      emailORNumber.clear();
      passText.clear();
      Get.to(() => const LoginView());
    }
  }
}
