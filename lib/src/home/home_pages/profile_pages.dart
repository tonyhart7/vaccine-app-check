import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHomePages extends StatelessWidget {
  const ProfileHomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          Container(
            color: Colors.greenAccent,
            height: 0.2.sh,
            width: 0.5.sw,
          ),
        ],
      ),
    );
  }
}
