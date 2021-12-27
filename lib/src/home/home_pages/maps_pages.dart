import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class MapsHomepages extends StatelessWidget {
  const MapsHomepages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: SnappingSheet(
        initialSnappingPosition:
            const SnappingPosition.factor(positionFactor: 0.3),
        lockOverflowDrag: true,
        snappingPositions: const [
          SnappingPosition.factor(
            positionFactor: 0.0,
            snappingCurve: Curves.easeOutExpo,
            snappingDuration: Duration(seconds: 1),
            grabbingContentOffset: GrabbingContentOffset.top,
          ),
          SnappingPosition.pixels(
            positionPixels: 400,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.redAccent,
                height: 0.2.sh,
                width: 0.4.sw,
              ),
            ],
          ),
        ),
        grabbingHeight: 20,
        grabbing: const Divider(
          color: Colors.black26,
          thickness: 5,
          height: 20,
          indent: 180,
          endIndent: 180,
        ),
        sheetBelow: SnappingSheetContent(
          sizeBehavior: SheetSizeStatic(size: 200, expandOnOverflow: false),
          child: Column(
            children: [
              SizedBox(height: 0.02.sh),
              Container(
                color: Colors.amber,
                height: 0.2.sh,
                width: 0.4.sw,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
