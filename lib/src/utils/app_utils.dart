import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

// App Router Import
import 'package:vaccine/src/sample_feature/sample_item_details_view.dart';
import 'package:vaccine/src/regist_vaccine/regist_vaccine_view.dart';
import 'package:vaccine/src/authentication/login_view.dart';
import 'package:vaccine/src/nearest_vaccine/nearest_vaccine_list.dart';
import 'package:vaccine/src/home/home_view.dart';

// App Database ( Hive ) Import
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vaccine/src/regist_vaccine/model/regist_vaccine.dart';
import 'package:vaccine/src/authentication/model/user.dart';

part 'app_key.dart';
part 'app_router.dart';
part 'app_style.dart';
part 'app_theme_data.dart';
part 'app_database.dart';
part 'app_sheet.dart';
part 'app_data_service.dart';
part 'app_error_handler.dart';
