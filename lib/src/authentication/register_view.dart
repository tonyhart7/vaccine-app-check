import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaccine/src/utils/app_utils.dart';

import 'auth_controller.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      initState: (_) {},
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Daftar',
              style: AppStyle.textTitle,
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 0.4.sh,
                    width: 0.9.sw,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Nama Lengkap',
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
                                  controller: controller.nameText,
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
                        SizedBox(height: 0.01.sh),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Email:',
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
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(16.0),
                                    border: InputBorder.none,
                                    isDense: true,
                                    hintText: 'Example: andy@email.com',
                                  ),
                                ),
                              ),
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
                                'Password:',
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
                                  keyboardType: TextInputType.visiblePassword,
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
                      ],
                    ),
                  ),
                  SizedBox(height: 0.2.sh),
                  SizedBox(
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        controller.registerUser();
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                      },
                      label: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Register'),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
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
