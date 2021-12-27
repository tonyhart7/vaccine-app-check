import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vaccine/src/utils/app_utils.dart';

class InformationHomePages extends StatelessWidget {
  const InformationHomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ListTile(
              leading: const Icon(Icons.info_outlined),
              title: Text(
                'Informasi',
                style: AppStyle.textSubTitleBOLD,
              ),
            ),
          ),
          SizedBox(height: 0.01.sh),
          SizedBox(
            width: 0.9.sw,
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    title: Text(
                      'Jadwal & Tempat Pendaftaran Vaksin',
                      style: AppStyle.textSubTitleBOLD,
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    title: Text(
                      'Syarat Vaksin Covid-19',
                      style: AppStyle.textSubTitleBOLD,
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    title: Text(
                      'Kasus Covid-19',
                      style: AppStyle.textSubTitleBOLD,
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    title: Text(
                      'Tips Pencegahan Covid-19',
                      style: AppStyle.textSubTitleBOLD,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
