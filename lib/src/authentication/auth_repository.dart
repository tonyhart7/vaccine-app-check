import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vaccine/src/utils/app_utils.dart';

import 'package:vaccine/src/authentication/model/user.dart';

import 'package:vaccine/src/home/home_view.dart';
import 'package:vaccine/src/home/home_binding.dart';

import 'auth_controller.dart';

final localUser = Hive.box<User>(AppKey.localUser);
AuthController get authCntrl => Get.find();

class AuthRepository {
  void registUser(
    String nameUser,
    String emailUser,
    String passwdUser,
  ) async {
    final newUser = User(
      id: DateTime.now().toString(),
      name: nameUser,
      email: emailUser,
      password: passwdUser,
      status: 'BELUM VAKSIN',
    );
    authCntrl.currentUser = newUser;
    localUser.add(newUser);
    Get.rawSnackbar(message: 'Berhasil Daftar');
    Get.off(() => const HomeView(), binding: HomeBinding());
  }

  Future loginUser(
    String emailUser,
    String passwdUser,
  ) async {
    List<User> _users = localUser.values.toList();
    for (User user in _users) {
      if (user.email == emailUser && user.password == passwdUser) {
        authCntrl.currentUser = user;
        Get.off(() => const HomeView(), binding: HomeBinding());
        break;
      } else {
        Get.rawSnackbar(
            message:
                'Email atau Password salah, silahkan coba lagi atau daftar baru');
      }
    }
  }
}
