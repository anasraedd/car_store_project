import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_theme.dart';

class BoxCirclerWithCustomColor extends StatelessWidget {
  Color color;
  BoxCirclerWithCustomColor({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(1),
      width: 15.w,
      height: 15.w,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          //borderRadius: BorderRadius.circular(300.r),
          border: Border.all(width: 2, color: scaffoldBackGround)),
    );
  }
}
