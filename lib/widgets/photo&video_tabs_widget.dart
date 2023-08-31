
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/get/car_getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoAndVideoTabsWidget extends GetView<CarGetxController> {
  const PhotoAndVideoTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List list = [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,

    ].obs;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h,),
          Text('2020 Cayman 2T', style: GoogleFonts.roboto(fontSize: 12.sp),),
          SizedBox(height: 9.h,),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.w,
              childAspectRatio: 1.3,), itemBuilder: _photo,

            itemCount: list.length,),

          SizedBox(height: 30.h),

          SizedBox(height: 20.h,),
          Text('2020 boxster spyder', style: GoogleFonts.roboto(fontSize: 12.sp),),
          SizedBox(height: 9.h,),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,  crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.w,
              childAspectRatio: 1.3, ), itemBuilder: _photo,

            itemCount: list.length,),

        ],
      ),
    );
  }

  Widget _photo(context, index) {
    return Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: CachedNetworkImage(

          imageUrl:
          'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd',
          fit: BoxFit.cover,
          placeholder: (context, url) => SpinKitFadingCircle(
            color: Colors.grey.shade500,
            size: 52.0,
          ),
        ),
        // Image.network(
        // 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd',
        //   // height: 72.h,
        //   // width: 108.w,
        //   fit: BoxFit.cover,
        // )

    );
  }

  Widget _video(context, index) {
    return Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Image.network(
          "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*",
          height: 72.h,
          width: 108.w,
          fit: BoxFit.cover,
        ));
  }
}
