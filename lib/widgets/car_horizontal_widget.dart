import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CarHorizontalWidget extends StatelessWidget {
late Color backImageColor;
late bool visableVs;


CarHorizontalWidget({required this.backImageColor, required this.visableVs});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: visableVs,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 1.h,
                color: primaryColorDisable,
              ),
              CircleAvatar(
                radius: 15.h,
                backgroundColor: primaryColorDisable,
                child: Text(
                    "Vs",
                    style: GoogleFonts.roboto(
                        fontSize: 10.sp,
                        color: Colors.grey[300]
                    )
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: 90.w,
              height: 90.w,

              padding: EdgeInsetsDirectional.all(5),
              decoration: BoxDecoration(
                color: backImageColor,
                borderRadius: BorderRadius.circular(15),),
              child:  Center(
                child: CachedNetworkImage(
                  // height: 50.h,
                  // width: 50.w,
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
            SizedBox(
              width: 15.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Porsche 718",
                    style:  GoogleFonts.roboto(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    )
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                    "Porsche/Luxury/The 2.3L EcoBoost",
                    style:  GoogleFonts.roboto(
                        fontSize: 10.sp,
                        color: primaryColorDisable
                    )
                ),
                SizedBox(height: 5.h),
                Text(
                    "\$62,000.00-\$74,000.00",
                    style:  GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: primaryColor
                    )
                ),
              ],
            ),
          ],
        ),

      ],
    );
  }
}
