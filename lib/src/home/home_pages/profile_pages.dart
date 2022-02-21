import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vaccine/src/authentication/login_view.dart';
import 'package:vaccine/src/utils/app_utils.dart';

import 'profile_controller.dart';

class ProfileHomePages extends StatelessWidget {
  const ProfileHomePages({Key? key}) : super(key: key);

  ProfileController get profContrl => Get.find();

  @override
  Widget build(BuildContext context) {
    profContrl.getCurrentUser();
    return SizedBox.expand(
      child: Column(
        children: [
          SizedBox(height: 0.02.sh),
          SizedBox(
            height: 0.15.sh,
            width: 0.9.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 10,
                  shape: const StadiumBorder(),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.person,
                      size: 50.h,
                    ),
                    radius: 40.h,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() => Text(
                          profContrl.currentUser.value?.names ?? 'No Name',
                          style: AppStyle.textSubTitleBOLD,
                          overflow: TextOverflow.fade,
                        )),
                    SizedBox(height: 0.005.sh),
                    Obx(() => Text(
                          profContrl.currentUser.value?.email ?? "Please Login",
                          style: AppStyle.textBody,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      size: 30.h,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0.05.sh),
          SizedBox(
            width: 0.9.sw,
            child: Column(
              children: [
                const Divider(),
                Obx(() => ListTile(
                      leading: const Icon(Icons.person_outline_outlined),
                      title: Text(
                        profContrl.currentUser.value?.username ??
                            'Please Login ',
                        style: AppStyle.textSubTitle,
                      ),
                    )),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.privacy_tip_outlined),
                  title: Text(
                    'Kebijakan Privasi',
                    style: AppStyle.textSubTitle,
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.help_outline_rounded),
                  title: Text(
                    'Pusat Bantuan',
                    style: AppStyle.textSubTitle,
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () => Get.offAll(() => const LoginView()),
                  leading: const Icon(Icons.logout_outlined),
                  title: Text(
                    'Keluar',
                    style: AppStyle.textSubTitle,
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
