import 'package:get/get.dart';
import 'package:vaccine/src/regist_vaccine/regist_controller.dart';

class RegistBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistController>(() => RegistController());
  }
}
