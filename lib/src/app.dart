import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:vaccine/src/utils/app_utils.dart';
import 'settings/settings_controller.dart';
import 'authentication/auth_binding.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: ScreenUtil.defaultSize,
        builder: () {
          return AnimatedBuilder(
            animation: settingsController,
            builder: (BuildContext context, Widget? child) {
              return GetMaterialApp(
                initialBinding: AuthBinding(),
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', ''), // English, no country code
                ],
                onGenerateTitle: (BuildContext context) =>
                    AppLocalizations.of(context)!.appTitle,
                theme: AppThemes.lightThemeData,
                onGenerateRoute: AppRouter.routeGenerator,
              );
            },
          );
        });
  }
}
