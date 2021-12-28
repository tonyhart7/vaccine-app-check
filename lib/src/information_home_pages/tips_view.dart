import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaccine/src/utils/app_utils.dart';

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);

  static const routeName = '/tips';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tips Pencegahan Covid - 19',
          style: AppStyle.textSubTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 0.9.sw,
            child: Column(
              children: [
                Text(
                  '1. Selalu jaga jarak aman dari orang lain (minimal 1 meter) meskipun mereka tidak tampak sakit',
                  style: AppStyle.textBody,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 0.02.sh),
                Text(
                  '2. Kenakan masker di ruang publik, terutama di dalam ruangan atau jika pembatasan fisik tidak dimungkinkan',
                  style: AppStyle.textBody,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 0.02.sh),
                Text(
                  '3. Sebaiknya pilih ruang terbuka dan berventilasi baik. Buka jendela jika berada di dalam ruangan.',
                  style: AppStyle.textBody,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 0.02.sh),
                Text(
                  '4. Cuci tangan Anda secara rutin. Gunakan sabun dan air atau cairan pembersih tangan berbahan alkohol.',
                  style: AppStyle.textBody,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 0.02.sh),
                Text(
                  '5. Ikuti vaksinasi ketika giliran Anda. Ikuti panduan setempat terkait vaksinasi.',
                  style: AppStyle.textBody,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 0.02.sh),
                Text(
                  '6. Saat batuk atau bersin, tutup mulut dan hidung anda dengan lengan atau tisu.',
                  style: AppStyle.textBody,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 0.02.sh),
                Text(
                  '7. Jangan keluar rumah jika merasa tidak enak badan.',
                  style: AppStyle.textBody,
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 0.02.sh),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
