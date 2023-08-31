import 'package:eccomerce_app/app/tabs/review_tab.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

mixin Helpers{

  void bottomSheet({required context, required body}) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.r))),
      backgroundColor: Color(0xFFF5F8FF),
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding:
        EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: body,
      ),
    );
  }

  void showBottomSheetWriteMessage(BuildContext context){
  Get.bottomSheet(Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20), topEnd: Radius.circular(20))
    ),


    child: Column(
      children: [
        Padding(
          padding:  EdgeInsetsDirectional.only(start: 20.w, top: 10.h),
          child: Row(
            children: [
              Expanded(child: Text('Reviews', style: GoogleFonts.roboto(
                  fontSize: 14.sp,
                  color: primaryColorDisable
              ),)),
              IconButton(
                  padding: EdgeInsetsDirectional.all(2),
                  onPressed: () {  },
                  icon: Icon(Icons.clear))
            ],
          ),
        ),
        Expanded(
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ReviewsTab(scrollController: ScrollController(),),


          ),
        ),
        Container(
          height: 83.h,
          width: double.infinity,
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
              color: scaffoldBackGround,
              borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
          ),
          child: Container(
            height: 30.h,
            padding: EdgeInsetsDirectional.all(10.w),
            margin: EdgeInsets.symmetric(vertical: 20.h),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/edit_icon.svg',  ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: CustomTextField(hint: 'Say something…', keyboardType: TextInputType.text, context: context, controller: TextEditingController()),
                )
              ],
            ),
          ),

        )
      ],
    ),
  ));
}
}