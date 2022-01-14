import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:vaccine/src/authentication/auth_controller.dart';
import 'package:vaccine/src/regist_vaccine/model/regist_vaccine.dart';
import 'package:vaccine/src/regist_vaccine/regist_vaccine_list.dart';
import 'package:vaccine/src/regist_vaccine/regist_vaccine_repository.dart';
import 'package:vaccine/src/utils/app_utils.dart';

class RegistController extends GetxController {
  final localRegist = Hive.box<RegistVaccine>(AppKey.localData);

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  AuthController get authCntrl => Get.find();
  bool isVaccinated = false;

  List<RegistVaccine> tmpList = [];

  final passportText = TextEditingController();
  final stateText = TextEditingController();
  final cityText = TextEditingController();
  final districtText = TextEditingController();
  // final countyText = TextEditingController();
  final fulladdressText = TextEditingController();

  registVaccine(String id) {
    if (passportText.text.isEmpty) {
      Get.rawSnackbar(message: 'Nomor Tanda Penduduk tidak boleh kosong');
      return;
    }
    if (stateText.text.isEmpty) {
      Get.rawSnackbar(message: 'isi provinsi dahulu');
      return;
    }
    if (cityText.text.isEmpty) {
      Get.rawSnackbar(message: 'isi kota/kabupaten dahulu');
      return;
    }
    if (districtText.text.isEmpty) {
      Get.rawSnackbar(message: 'pilih kecamatan dahulu');
      return;
    }
    if (fulladdressText.text.isEmpty) {
      Get.rawSnackbar(message: 'mohon lengkap alamat sesusai ktp/passport');
      return;
    }
    if (fulladdressText.text.length < 12) {
      Get.rawSnackbar(message: 'mohon masukkan alamat yang lengkap');
      return;
    }
    if (passportText.text.length < 9) {
      Get.rawSnackbar(message: 'Nomor tanda penduduk tidak valid');
      return;
    }

    RegistVaccineRepository().registVaccine(
      id,
      passportText.text,
      stateText.text,
      cityText.text,
      districtText.text,
      fulladdressText.text,
    );
    Get.rawSnackbar(message: 'Berhasil Daftar');
    Get.off(() => const RegistVaccineList());
  }

  loadListRegist() {
    bool storedRegist = localRegist.length != 0;

    if (storedRegist) {
      tmpList = localRegist.values.toList();
    }
  }
}
