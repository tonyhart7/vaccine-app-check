import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:vaccine/src/authentication/auth_controller.dart';
import 'package:vaccine/src/utils/app_utils.dart';

import 'regist_controller.dart';

class RegistVaccineList extends StatefulWidget {
  const RegistVaccineList({Key? key}) : super(key: key);

  static const routeName = '/registVaccineList';

  @override
  State<RegistVaccineList> createState() => _RegistVaccineListState();
}

class _RegistVaccineListState extends State<RegistVaccineList> {
  AuthController get authCntrl => Get.find();
  RegistController get registCntrl => Get.find();
  @override
  void initState() {
    super.initState();
    registCntrl.loadListRegist();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistController>(
      init: RegistController(),
      initState: (_) {},
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              title: Text(
                'Data Vaksin',
                style: AppStyle.textTitle,
              ),
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.redAccent,
                          ),
                          borderRadius: BorderRadius.circular(18)),
                      height: 0.2.sh,
                      width: 0.9.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Jumlah Penduduk di kelurahan',
                            style: AppStyle.textSubTitle,
                          ),
                          Text(
                            'Tercatat 1530 orang',
                            style: AppStyle.textSubTitle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Laki laki: 898',
                                style: AppStyle.textSubTitle,
                              ),
                              Text(
                                'Perempuan 632',
                                style: AppStyle.textSubTitle,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 0.04.sh),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: SizedBox(
                            height: 0.15.sh,
                            width: 0.4.sw,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Jumlah Terlapor',
                                  style: AppStyle.textSubTitle,
                                ),
                                Text(
                                  'Tercatat: 985 orang',
                                  style: AppStyle.textSubTitle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: SizedBox(
                            height: 0.15.sh,
                            width: 0.4.sw,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Jumlah Belum Terlapor',
                                  style: AppStyle.textSubTitle,
                                ),
                                Text(
                                  'Tercatat: 545 orang',
                                  style: AppStyle.textSubTitle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: SizedBox(
                            height: 0.15.sh,
                            width: 0.4.sw,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Jumlah yang sudah terlapor vaksin',
                                  style: AppStyle.textSubTitle,
                                ),
                                Text(
                                  'Tercatat: 783 orang',
                                  style: AppStyle.textSubTitle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          child: SizedBox(
                            height: 0.15.sh,
                            width: 0.4.sw,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Jumlah yang Belum Terlapor vaksin',
                                  style: AppStyle.textSubTitle,
                                ),
                                Text(
                                  'Tercatat: 202 orang',
                                  style: AppStyle.textSubTitle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.04.sh),
                    SingleChildScrollView(
                      child: Obx(() => SizedBox(
                            height: 0.6.sh,
                            width: 0.9.sw,
                            child: controller.listRecord.isNotEmpty
                                ? ListView.builder(
                                    itemCount: controller.listRecord.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: Text(controller
                                                .listRecord[index]?.fullname ??
                                            "no ktp"),
                                        subtitle: Text(controller
                                                .listRecord[index]
                                                ?.fulladress ??
                                            "no address"),
                                        trailing: Text(controller
                                                .listRecord[index]?.district ??
                                            "no district"),
                                      );
                                    },
                                  )
                                : Center(
                                    child: Text(
                                    'No data',
                                    style: AppStyle.textBig,
                                  )),
                          )),
                    ),
                    SizedBox(height: 0.04.sh),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
