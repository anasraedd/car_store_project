import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class KeySpecsWidget extends StatelessWidget {
late Widget icon;
late String title;
late String keySpecs;

KeySpecsWidget({required this.icon, required this.title, required this.keySpecs});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.w,
      width: 100.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsetsDirectional.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          SizedBox(height: 20.h,),
          Text(title,  style: GoogleFonts.roboto(fontSize:  title.length < 12 ? 12.sp : keySpecs.length /1.1.sp, fontWeight: FontWeight.normal, color: Colors.black, )),
          SizedBox(height: 5.h,),

          Text(keySpecs,  style: GoogleFonts.roboto(fontSize: keySpecs.length < 15 ? 10.sp : keySpecs.length /2, fontWeight: FontWeight.normal, color: primaryColorDisable, )),

        ],
      ),
    );
  }
}
