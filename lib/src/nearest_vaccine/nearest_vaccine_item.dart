import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaccine/src/utils/app_utils.dart';

class NearestVaccineItemList extends StatelessWidget {
  const NearestVaccineItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: SizedBox(
              height: 0.14.sh,
              width: 0.9.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 0.5.sw,
                        child: Text(
                          'Jl. Lap. Merah no.13 RT.13/RW.9,\n Manggarai Kec Tebet, kota Jakarta Selatan \n Daerah khusus Ibukota jakarta 12850',
                          style: AppStyle.smallText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 0.2.sw,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on_outlined),
                            Text(
                              '900m',
                              style: AppStyle.smallText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 0.2.sw,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.timer),
                            Text(
                              '14m',
                              style: AppStyle.smallText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: SizedBox(
              height: 0.14.sh,
              width: 0.9.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 0.5.sw,
                        child: Text(
                          'Jl Lap. Menara Air III no 53,\n Manggarai Kec Tebet, kota Jakarta Selatan \n Daerah khusus Ibukota jakarta 12850',
                          style: AppStyle.smallText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 0.2.sw,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on_outlined),
                            Text(
                              '1,1km',
                              style: AppStyle.smallText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 0.2.sw,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.timer),
                            Text(
                              '20m',
                              style: AppStyle.smallText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            child: SizedBox(
              height: 0.14.sh,
              width: 0.9.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 0.5.sw,
                        child: Text(
                          'Jl. Taman Bukit Duri No.2 RW.12,\n Bukit Diri Kec Tebet, kota Jakarta Selatan \n Daerah khusus Ibukota jakarta 12850',
                          style: AppStyle.smallText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 0.2.sw,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on_outlined),
                            Text(
                              '1,5km',
                              style: AppStyle.smallText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 0.2.sw,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.timer),
                            Text(
                              '41m',
                              style: AppStyle.smallText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
