// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/get/car_getx_controller.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/color_widget.dart';
import 'package:eccomerce_app/widgets/photo&video_tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CarInfoScreen extends GetView<CarGetxController> {
  const CarInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CarGetxController());
    return Scaffold(
      backgroundColor: scaffoldBackGround,
      body: GetBuilder<CarGetxController>(
        init: CarGetxController(),
    builder: (getxController) => Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(top: 20.h),
            width: double.infinity,
            height: 230.h,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: Container(
                    // height: 60.h,
                    width: double.infinity,

                    padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){
                          Get.back();
                        }, icon: Icon(Icons.arrow_back_outlined, color: Colors.grey,)),

                      Row(
                        children: [
                          Text('2020 Cayman T', textAlign: TextAlign.center,),
                          Icon(Icons.keyboard_arrow_down_outlined, color: primaryColorDisable,),],
                      ),
                        IconButton(onPressed: (){

                        }, icon: SvgPicture.asset('assets/icons/share_icon.svg', height: 18, width: 18,)),
                      ],
                    ),
                  ),
                ),

                // PositionedDirectional(
                //   end: 0,
                //   // alignment: AlignmentDirectional.bottomEnd,
                //   child: Padding(
                //     padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                //     child: IconButton(onPressed: (){
                //
                //     }, icon: SvgPicture.asset('assets/icons/share_icon.svg', height: 18, width: 18,)),
                //   ),
                // ),
                PositionedDirectional(
                  top: 150.h,
                  start: 20.w,

                  child: SvgPicture.asset('assets/icons/circle_arount.svg'),
                ),
                Align(
                  alignment: AlignmentDirectional.center,

                  child: Padding(
                    padding:  EdgeInsets.only(top: 15.h),
                    child: GestureDetector(
                      onPanUpdate: (details) {

                        getxController.changeValueOfTransform(
                            details.delta.dy * 0.01, details.delta.dx * 0.01);

                      },
                      child: Transform(
                        transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateY(getxController.rotationY),
                        alignment: FractionalOffset.center,

                        child: CachedNetworkImage(
                          height: 200.h,
                          width: 300.w,
                          imageUrl:
                          'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310',
                          fit: BoxFit.cover,
                          placeholder: (context, url) => SpinKitFadingCircle(
                            color: Colors.grey.shade500,
                            size: 52.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: 110.w),
           child: SizedBox(
             height: 40.h,
             child: ListView.builder(

               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index){
return GestureDetector(
    onTap: (){
controller.changeColorSelected(index);
      // getxController.colorSelected.value = 3;
    },
    child: ColorWidget(color: controller.myColors[index], selected: getxController.colorSelected == index,));
             },
             itemCount: controller.myColors.length,),
           ),
         ),
          SizedBox(height: 23.h,),

          Expanded(child: bulidSecondItemList())


        ],
      )
    ),
    );
  }

  Widget bulidSecondItemList() => Container(
    // height: 543,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15.r),
        topLeft: Radius.circular(15.r),
      ),
    ),
    child: DefaultTabController(
      length: 2, // Change this to the number of tabs you want
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsetsDirectional.only(top: 10.h),
            constraints: const BoxConstraints(maxWidth: 200),
            child: const TabBar(
              isScrollable: true,
              labelColor: primaryColor,
              labelStyle:
              TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              unselectedLabelStyle:
              TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              unselectedLabelColor: primaryColorDisable,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              indicatorColor: primaryColor,
              tabs: [
                Tab(text: 'Photots'),
                Tab(text: 'Videos'),
                // Add more tabs as needed
              ],
            ),
          ),
           Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TabBarView(
                children: [
                  PhotoAndVideoTabsWidget(),
                  PhotoAndVideoTabsWidget(),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 44.h,
            child: ElevatedButton(onPressed: (){}, child: Text('Get Offers from Dealer', style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: Colors.white
            ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                elevation: 0,

              ),
            ),
          ),

          SizedBox(height: 30.h)
        ],
      ),
    ),
  );
}
