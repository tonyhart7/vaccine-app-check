import 'package:get/get.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:vaccine/src/regist_vaccine/model/regist_vaccine.dart';
import 'package:vaccine/src/utils/app_utils.dart';

final localRegist = Hive.box<RegistVaccine>(AppKey.localData);

class RegistVaccineRepository {
  void registVaccine(
    String id,
    String passportNumber,
    String state,
    String city,
    String district,
    String fullAddress,
  ) async {
    final newRegistraion = RegistVaccine(
      id: id,
      passportNumber: passportNumber,
      state: state,
      city: city,
      district: district,
      fullAddress: fullAddress,
      timeStamp: DateTime.now(),
    );
    localRegist.add(newRegistraion);
    Get.rawSnackbar(message: 'Berhasil Verifikasi');
  }
}
