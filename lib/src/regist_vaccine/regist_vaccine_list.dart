import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

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
          body: controller.tmpList.isNotEmpty
              ? ListView.builder(
                  itemCount: controller.tmpList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(authCntrl.currentUser.name),
                      subtitle: Text(controller.tmpList[index].fullAddress),
                      trailing: Text(DateFormat.yMMMMd()
                          .format(controller.tmpList[index].timeStamp)),
                    );
                  },
                )
              : Center(
                  child: Text(
                  'No data',
                  style: AppStyle.textBig,
                )),
        );
      },
    );
  }
}
