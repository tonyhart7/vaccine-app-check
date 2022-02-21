import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vaccine/src/home/home_pages/profile_controller.dart';
import 'package:vaccine/src/regist_vaccine/regist_constant.dart';
import 'package:vaccine/src/regist_vaccine/regist_controller.dart';
import 'package:vaccine/src/utils/app_utils.dart';

class RegistVaccinePage extends StatelessWidget {
  const RegistVaccinePage({Key? key}) : super(key: key);

  static const routeName = '/registVaccine';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistController>(
      init: RegistController(),
      initState: (_) {},
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: 0.9.sw,
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nama Lengkap:',
                            style: AppStyle.textBody,
                          ),
                        ),
                        GetBuilder<ProfileController>(
                          init: ProfileController(),
                          initState: (_) {},
                          builder: (prof) {
                            return Card(
                              color: Colors.grey[350],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: SizedBox(
                                height: 0.06.sh,
                                width: double.infinity,
                                child: TextFormField(
                                  initialValue: prof.currentUser.value?.names,
                                  enabled: false,
                                  keyboardType: TextInputType.none,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(16.0),
                                    border: InputBorder.none,
                                    isDense: true,
                                    // hintText: 'Example: andy@email.com',
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 0.01.sh),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nomor Penduduk:',
                            style: AppStyle.textBody,
                          ),
                        ),
                        Card(
                          color: Colors.grey[350],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                            height: 0.06.sh,
                            width: double.infinity,
                            child: TextFormField(
                              controller: controller.passportText,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(16.0),
                                border: InputBorder.none,
                                isDense: true,
                                // hintText: 'Example: andy@email.com',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02.sh),
                    Card(
                      color: Colors.grey[350],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownSearch<String>(
                        mode: Mode.BOTTOM_SHEET,
                        showSelectedItems: true,
                        dropdownSearchDecoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 16.0),
                          hintText: 'Pilih Provinsi',
                        ),
                        showSearchBox: true,
                        items: stateList,
                        onChanged: (value) {
                          controller.stateText.text = value!;
                          controller.update();
                        },
                      ),
                    ),
                    SizedBox(height: 0.02.sh),
                    Card(
                      color: Colors.grey[350],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownSearch<String>(
                        mode: Mode.BOTTOM_SHEET,
                        showSelectedItems: true,
                        dropdownSearchDecoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 16.0),
                          hintText: 'Pilih Kota',
                        ),
                        showSearchBox: true,
                        items: cityList,
                        onChanged: (value) {
                          controller.cityText.text = value!;
                          controller.update();
                        },
                      ),
                    ),
                    SizedBox(height: 0.02.sh),
                    // Card(
                    //   color: Colors.grey[350],
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: DropdownSearch<String>(
                    //     mode: Mode.BOTTOM_SHEET,
                    //     showSelectedItems: true,
                    //     dropdownSearchDecoration: const InputDecoration(
                    //       border: InputBorder.none,
                    //       contentPadding: EdgeInsets.only(left: 16.0),
                    //       hintText: 'Pilih Kecamatan',
                    //     ),
                    //     showSearchBox: true,
                    //     items: districtList,
                    //     onChanged: (value) {
                    //       controller.districtText.text = value!;
                    //       controller.update();
                    //     },
                    //   ),
                    // ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Kecamatan :',
                              style: AppStyle.textBody,
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.grey[350],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                            height: 0.06.sh,
                            width: double.infinity,
                            child: TextFormField(
                              controller: controller.districtText,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(16.0),
                                border: InputBorder.none,
                                isDense: true,
                                // hintText: 'Example: andy@email.com',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.02.sh),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Alamat Lengkap :',
                            style: AppStyle.textBody,
                          ),
                        ),
                        Card(
                          color: Colors.grey[350],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                            height: 0.2.sh,
                            width: double.infinity,
                            child: TextFormField(
                              controller: controller.fulladdressText,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(16.0),
                                border: InputBorder.none,
                                isDense: true,
                                // hintText: 'Example: andy@email.com',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0.02.sh),
                        CheckboxListTile(
                          title: const Text('Sudah Vaksin?'),
                          value: controller.isVaccinated,
                          controlAffinity: ListTileControlAffinity.platform,
                          onChanged: (bool? value) {
                            controller.isVaccinated = value!;
                            controller.update();
                          },
                        ),
                        SizedBox(height: 0.04.sh),
                        Align(
                          alignment: Alignment.center,
                          child: FloatingActionButton.extended(
                            onPressed: () {
                              FocusScopeNode currentFocus =
                                  FocusScope.of(context);

                              if (!currentFocus.hasPrimaryFocus) {
                                currentFocus.unfocus();
                              }
                            },
                            // icon: SvgPicture.asset(
                            //     'assets/images/icons/AuthViewIcon/facebook.svg',
                            //     height: 18.h),
                            label: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Selesai'),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 0.05.sh),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
