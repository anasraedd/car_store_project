
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/get/car_getx_controller.dart';
import 'package:eccomerce_app/models/car.dart';
import 'package:eccomerce_app/models/car_price.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CarCompareCard extends GetView<CarGetxController> {


  final CarPrice car;
  final ValueChanged<bool> onChanged;

  const CarCompareCard({super.key, required this.car, required this.onChanged,});

  @override
  Widget build(BuildContext context) {
    // var value = controller.isChecked;

    return Container(
      height: 200.h,
      width: 160.w,
      decoration: BoxDecoration(
        color: scaffoldBackGround,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 15.w,
          end: 15.w,
          top: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CachedNetworkImage(
                // height: 50.h,
                // width: 50.w,
                imageUrl: car.image!,
                fit: BoxFit.cover,
                placeholder: (context, url) => SpinKitFadingCircle(
                  color: Colors.grey.shade500,
                  size: 52.0,
                ),
              ),
            ),
            Text(
              car.name,
              style: GoogleFonts.roboto(
                fontSize: 14.sp,

              )
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              '${car.price}',
              style: TextStyle(
                color: primaryColor,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomCheckbox(
                  value: car.checkToCompare,
                  onChanged: (newValue) {
                    // Handle the checkbox value change here
                    onChanged(newValue);

                    print("Checkbox value changed: $newValue");
                  },
                ),

                SizedBox(width: 6.w),
                Text(
                  'Compare',
                  style:GoogleFonts.roboto(fontSize: 10.sp, color: primaryColorDisable)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
