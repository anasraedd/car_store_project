import 'package:eccomerce_app/get/car_getx_controller.dart';
import 'package:eccomerce_app/helpers/helpers.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/car_horizontal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CompareCarsScreen extends GetView<CarGetxController> with Helpers {
  const CompareCarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    return GetBuilder<CarGetxController>(
      init: CarGetxController(),
      builder: (controller) {
        return Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading:     IconButton(onPressed: (){
              Get.back();
            }, icon: Icon(Icons.arrow_back_outlined, color: Colors.grey,)),
            title: Text('Compare Cars', textAlign: TextAlign.center,),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text('Edit', style: GoogleFonts.roboto(
                  fontSize:14.sp,
                  color: primaryColorDisable
                ),),
              )
            ],

          ),
          backgroundColor: Colors.white,
          body: Container(
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, indwx){
return CarHorizontalWidget(backImageColor: scaffoldBackGround, visableVs: indwx >0 ? true : false,);
            },
            itemCount: 10,
            )
          ),
          bottomNavigationBar: Container(
            width: double.infinity,
            height: 109.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: scaffoldBackGround,
            ),
            child: Row(
              children: [
                Expanded(
                  child:  Container(
                    padding:  EdgeInsetsDirectional.only(start: 20.w),
                    height: 44.h,
                    child: ElevatedButton(onPressed: (){


                    }, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: primaryColor,),
                        Text('Add Cars', style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: primaryColor
                        ),),
                      ],
                    ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25), ),
                        side: BorderSide(color: primaryColor),


                        elevation: 0,

                      ),
                    ),
                  ),

                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Container(
                    padding:  EdgeInsetsDirectional.only(end: 20.w),

                    height: 44.h,
                    child: ElevatedButton(onPressed: (){}, child: Text('Compare', style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: Colors.white
                    ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                        elevation: 0,

                      ),
                    ),
                  )
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
