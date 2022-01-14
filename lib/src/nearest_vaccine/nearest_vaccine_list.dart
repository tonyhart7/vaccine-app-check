import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

import 'package:vaccine/src/utils/app_utils.dart';

class NearestVaccineList extends StatelessWidget {
  const NearestVaccineList({Key? key}) : super(key: key);

  static const routeName = '/nearestVaccineList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vaksin Terdekat',
          style: AppStyle.textTitle,
        ),
      ),
      body: SnappingSheet(
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
      ),
    );
  }
}
