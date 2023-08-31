import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class CategoryWidget extends StatelessWidget {
  late String nameIcon;
  late String nameCategory;


  CategoryWidget({required this.nameIcon, required this.nameCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(40.r),

       ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/${nameIcon}.svg'),
            SizedBox(width: 4,),
            Text(nameCategory, style: GoogleFonts.roboto(fontSize: 14.sp, color: Colors.black),)


          ],
        ),
      ),
    );
  }
}
