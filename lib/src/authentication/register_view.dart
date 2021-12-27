import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'auth_controller.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
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
