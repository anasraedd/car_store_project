import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class CommomFuntions extends StatelessWidget {
  final String title;
  final String nameIcon;


  CommomFuntions({required this.title, required this.nameIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 76,
        height: 76,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: secondaryColor
        ),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/${nameIcon}.svg'),
            SizedBox(height: 12.h,),
            Text(title, style: GoogleFonts.roboto(fontSize: 12.sp),)
          ],
        ));
  }
}
