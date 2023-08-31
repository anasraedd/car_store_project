import 'package:eccomerce_app/app/tabs/review_tab.dart';
import 'package:eccomerce_app/helpers/helpers.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionsReviewWidget extends StatelessWidget with Helpers{


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83.h,
      width: double.infinity,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          color: scaffoldBackGround,
          borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
      ),
      child: Row(
        children: [

          Expanded(
            child: GestureDetector(
              onTap: (){
                showBottomSheetWriteMessage(context);
              },
              child: Container(
                padding: EdgeInsetsDirectional.all(10.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/edit_icon.svg',  ),
                    SizedBox(width: 10.w,),
                    Text('Say something…', style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: primaryColorDisable
                    ),)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 20.w,),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: (){
                    Get.toNamed('/review_screen');
                  },
                  child: SvgPicture.asset('assets/icons/comments.svg')),


              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Text('88', style: GoogleFonts.roboto(
                    fontSize: 8,
                    color: primaryColorDisable
                ),),
              )
            ],
          ),

          // Text(post.numberShare.toString(), style: GoogleFonts.roboto(fontSize: 12.sp),),
          SizedBox(width: 20.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/like_outlined.svg'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Text('99', style: GoogleFonts.roboto(
                    fontSize: 8,
                    color: primaryColorDisable
                ),),
              )
            ],
          ),
          SizedBox(width: 20.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/star_outlined.svg'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Text('Collect', style: GoogleFonts.roboto(
                    fontSize: 8,
                    color: primaryColorDisable
                ),),
              )
            ],
          ),
          // Text(post.numberShare.toString(), style: GoogleFonts.roboto(fontSize: 12.sp),),
        ],
      ),

    );
  }
}
