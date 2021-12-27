import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaccine/src/regist_vaccine/regist_controller.dart';

class RegistVaccinePage extends StatelessWidget {
  const RegistVaccinePage({Key? key}) : super(key: key);

  static const routeName = '/registVaccine';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistController>(
      init: RegistController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  height: 0.2.sh,
                  width: 0.8.sw,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
