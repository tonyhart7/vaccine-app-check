import 'package:dio/dio.dart';
import 'package:vaccine/src/utils/app_utils.dart';

import 'model/record_vaccine.dart';

class RegistVaccineRepository {
  Future<AppErrorHandler?> createRecordVaccine(
    String fullnames,
    String passportNumber,
    String state,
    String city,
    String district,
    String fullAddress,
  ) async {
    FormData formData = FormData.fromMap({
      'fullname': fullnames,
      'passport': passportNumber,
      'state': state,
      'city': city,
      'district': district,
      'fulladress': fullAddress,
      'timestamp': DateTime.now().toIso8601String(),
    });
    try {
      var response = await Dio()
          .post(DataServices().baseUrl + "api/vaccine", data: formData);
      if (response.statusCode == 200) {
        return AppErrorHandler.fromMap(response.data);
      } else {
        return AppErrorHandler.fromMap(response.data);
      }
    } on DioError catch (e) {
      return AppErrorHandler.fromMap(e.response?.data);
    }
  }

  Future<List<VaccineData>?> getRecordVaccine() async {
    try {
      var response = await Dio().get(DataServices().baseUrl + "api/vaccine");
      if (response.statusCode == 200) {
        return response.data["data"].map<VaccineData>((json) {
          return VaccineData.fromMap(json);
        }).toList();
      } else {
        return null;
      }
    } on DioError catch (e) {
      print(e.response?.statusMessage);
      return null;
    }
  }
}
