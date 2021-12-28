import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'package:vaccine/src/information_home_pages/statistic_view.dart';
import 'package:vaccine/src/information_home_pages/tips_view.dart';
import 'package:vaccine/src/regist_vaccine/regist_vaccine_list.dart';

import 'package:vaccine/src/utils/app_utils.dart';
import 'package:vaccine/src/regist_vaccine/regist_binding.dart';
import 'package:vaccine/src/regist_vaccine/regist_vaccine_view.dart';

class MapsHomepages extends StatelessWidget {
  const MapsHomepages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: SnappingSheet(
        initialSnappingPosition:
            const SnappingPosition.factor(positionFactor: 0.35),
        lockOverflowDrag: true,
        snappingPositions: const [
          SnappingPosition.factor(
            positionFactor: 0.0,
            snappingCurve: Curves.easeOutExpo,
            snappingDuration: Duration(seconds: 1),
            grabbingContentOffset: GrabbingContentOffset.top,
          ),
          SnappingPosition.pixels(
            positionPixels: 200,
            snappingCurve: Curves.elasticOut,
            snappingDuration: Duration(milliseconds: 1750),
          ),
          SnappingPosition.factor(
            positionFactor: 1.0,
            snappingCurve: Curves.bounceOut,
            snappingDuration: Duration(seconds: 1),
            grabbingContentOffset: GrabbingContentOffset.bottom,
          ),
        ],
        child: MapboxMap(
          accessToken: AppKey.mapboxApiKey,
          compassEnabled: true,
          zoomGesturesEnabled: true,
          scrollGesturesEnabled: true,
          gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
            Factory<OneSequenceGestureRecognizer>(
              () => EagerGestureRecognizer(),
            ),
          },
          initialCameraPosition: const CameraPosition(
              zoom: 10,
              target: LatLng(
                -6.334905,
                106.784117,
              )),
        ),
        grabbingHeight: 60,
        grabbing: const Divider(
          color: Colors.black26,
          thickness: 8,
          height: 20,
          indent: 180,
          endIndent: 180,
        ),
        sheetBelow: SnappingSheetContent(
          sizeBehavior: SheetSizeStatic(size: 200, expandOnOverflow: false),
          child: Column(
            children: [
              // SizedBox(height: 0.02.sh),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const RegistVaccinePage(),
                          binding: RegistBinding());
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      height: 0.1.sh,
                      width: 0.28.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.family_restroom_rounded,
                            size: 30.h,
                          ),
                          FittedBox(
                            child: Text(
                              'Lapor Vaksin',
                              overflow: TextOverflow.fade,
                              style: AppStyle.smallText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const RegistVaccineList(),
                          binding: RegistBinding());
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      height: 0.1.sh,
                      width: 0.28.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.medical_services_outlined,
                            size: 30.h,
                          ),
                          FittedBox(
                            child: Text(
                              'Data Vaksin',
                              overflow: TextOverflow.fade,
                              style: AppStyle.smallText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      height: 0.1.sh,
                      width: 0.28.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 30.h,
                          ),
                          FittedBox(
                            child: Text(
                              'Vaksin Terdekat',
                              overflow: TextOverflow.fade,
                              style: AppStyle.smallText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.02.sh),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const Tips());
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      height: 0.1.sh,
                      width: 0.28.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.masks_outlined,
                            size: 30.h,
                          ),
                          FittedBox(
                            child: Text(
                              'Tips Pencegahan',
                              overflow: TextOverflow.fade,
                              style: AppStyle.smallText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const StatisticView());
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white),
                      height: 0.1.sh,
                      width: 0.28.sw,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.family_restroom_outlined,
                            size: 30.h,
                          ),
                          FittedBox(
                            child: Text(
                              'Kasus Covid-19',
                              overflow: TextOverflow.fade,
                              style: AppStyle.smallText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
