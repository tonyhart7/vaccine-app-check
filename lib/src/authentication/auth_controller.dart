import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'model/user.dart';
import 'auth_repository.dart';

class AuthController extends GetxController {
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  late User currentUser;

  final nameText = TextEditingController();
  final passText = TextEditingController();
  final emailORNumber = TextEditingController();

  loginUser() {
    if (emailORNumber.text.isEmpty) {
      Get.rawSnackbar(message: 'Email Kosong');
      return;
    }
    if (passText.text.isEmpty) {
      Get.rawSnackbar(message: 'Password Kosong');
      return;
    }

    AuthRepository().loginUser(emailORNumber.text, passText.text);
  }

  registerUser() {
    if (emailORNumber.text.isEmpty) {
      Get.rawSnackbar(message: 'Email Kosong');
      return;
    }
    if (nameText.text.isEmpty) {
      Get.rawSnackbar(message: 'Isi Nama dahulu');
      return;
    }
    if (passText.text.isEmpty) {
      Get.rawSnackbar(message: 'Password Kosong');
      return;
    }

    AuthRepository().registUser(
      nameText.text,
      emailORNumber.text,
      passText.text,
    );
  }
}
