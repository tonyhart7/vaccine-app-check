import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:vaccine/src/utils/app_utils.dart';

import 'auth_controller.dart';
import 'register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      initState: (_) {},
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Login',
              style: AppStyle.textTitle,
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    // color: Colors.amber,
                    height: 0.3.sh,
                    width: 0.8.sw,
                    child: SvgPicture.asset(
                      'assets/images/doctor.svg',
                    ),
                  ),
                  SizedBox(
                    height: 0.03.sh,
                  ),
                  SizedBox(
                    height: 0.3.sh,
                    width: 0.8.sw,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Belum Punya Akun?',
                              style: AppStyle.textSubTitle,
                            ),
                            TextButton(
                              onPressed: () {
                                FocusScopeNode currentFocus =
                                    FocusScope.of(context);

                                if (!currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                                Get.to(() => const RegisterView());
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setSp(14),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Email',
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
                                  controller: controller.emailORNumber,
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(16.0),
                                    border: InputBorder.none,
                                    isDense: true,
                                    // hintText: 'Example: Shops Budget',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Password',
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
                                  controller: controller.passText,
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(16.0),
                                    border: InputBorder.none,
                                    isDense: true,
                                    // hintText: 'Example: Shops Budget',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.04.sh),
                  FloatingActionButton.extended(
                    onPressed: () {
                      controller.loginUser();
                      FocusScopeNode currentFocus = FocusScope.of(context);

                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                    },
                    // icon: SvgPicture.asset(
                    //     'assets/images/icons/AuthViewIcon/facebook.svg',
                    //     height: 18.h),
                    label: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Login'),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(height: 0.05.sh),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
