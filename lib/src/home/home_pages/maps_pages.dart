import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class MapsHomepages extends StatelessWidget {
  const MapsHomepages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: SnappingSheet(
        child: Container(
          color: Colors.redAccent,
          height: 0.2.sh,
          width: 0.4.sw,
        ),
        grabbingHeight: 75,
        grabbing: const Divider(
          color: Colors.black26,
          thickness: 5,
          height: 20,
          indent: 180,
          endIndent: 180,
        ),
        sheetBelow: SnappingSheetContent(
          draggable: true,
          child: Container(
            color: Colors.amber,
            height: 0.2.sh,
            width: 0.4.sw,
          ),
        ),
      ),
    );
  }
}
