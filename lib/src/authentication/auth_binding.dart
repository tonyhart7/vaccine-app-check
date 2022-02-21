import 'package:get/get.dart';
import 'package:vaccine/src/home/home_pages/profile_controller.dart';

import 'auth_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
    Get.put<ProfileController>(ProfileController());
  }
}
