import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularBrandsScreen extends StatelessWidget {
  const PopularBrandsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
appBar: AppBar(
  backgroundColor: Colors.white,
  title: Text('Brands', style: GoogleFonts.roboto(
    fontSize: 14.sp
  ),),
  centerTitle: true,
  elevation: 0,
  leading: IconButton(onPressed: (){
    Get.back();
  }, icon: Icon(Icons.arrow_back_outlined)) ,

),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'Popular brands',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: Colors.black),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(end: 15.w),
            height: 200.h,
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Number of columns in the grid
              ), itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsetsDirectional.only(start: 15.w),
                  height: 102.w,
                  width: 102.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        SvgPicture.asset(
                          'assets/icons/brand${index + 1}.svg',
                          width: 60,
                          height: 45,
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Text(
                          'Mercedes',
                          style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                              color: primaryColorDisable),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 8,)
            ),
          ),
          SizedBox(height: 30.h, ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w),
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (contect, index){
                return Row(
                  children: [

                    SvgPicture.asset(
                      'assets/icons/brand${1}.svg',
                      width: 60,
                      height: 45,
                    ),

                    SizedBox(width: 10.w,),
                    Expanded(
                      child: Text('Audi', style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        color: primaryColorDisable
                      ),),
                    )

                  ],
                );
              }

              ),
            ),
          )

        ],
      ),
    );
  }
}
