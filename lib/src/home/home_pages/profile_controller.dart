import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:vaccine/src/home/home_pages/profile_model.dart';
import 'package:vaccine/src/utils/app_utils.dart';

class ProfileController extends GetxController {
  int? currendUserID;
  Rx<DataUser?> currentUser = Rx<DataUser?>(null);

  getCurrentUser() async {
    try {
      var response = await Dio()
          .get(DataServices().baseUrl + "api/user/" + currendUserID.toString());
      if (response.statusCode == 200) {
        currentUser.value = DataUser.fromMap(response.data["data"]);
      } else {
        Get.rawSnackbar(message: response.data['message']);
      }
    } on DioError catch (e) {
      Get.rawSnackbar(message: e.response?.statusMessage);
    }
    update();
  }
}
