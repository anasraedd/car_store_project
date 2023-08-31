import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PorscheTab extends StatelessWidget {
  const PorscheTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          itemCount: 8,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 20.h),
              height: 100.h,
              width: double.infinity,

              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical :15.h),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    CachedNetworkImage(
                        imageUrl:
                        'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/Acura%20CDX.png?alt=media&token=c88087ec-8b10-4882-8b3e-9263d1e8affc',
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            CircularProgressIndicator()
                      // errorWidget: (context, url, error) =>
                      //     ShimmerLoadingWidget(
                      //         height: double.infinity,
                      //         width: double.infinity),
                      // placeholder: (context, url) =>
                      //     SpinKitFadingCircle(
                      //       color: Colors.blue,
                      //       size: 50.0,
                      //     ),
                    ),
                   SizedBox(width: 15.w,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(
                         width: 15.w,
                       ),
                       Text(
                         'Porsche 911',
                         style: GoogleFonts.roboto(
                             fontSize: 14.sp, fontWeight: FontWeight.bold),
                       ),
                       SizedBox(height: 8.h,),
                       Text(
                         'Porsche/Luxury',
                         style: GoogleFonts.roboto(
                             fontSize: 10.sp, color: primaryColorDisable),
                       ),
                       SizedBox(height: 8.h,),
                       Text(
                         '\$26,670',
                         style: GoogleFonts.roboto(
                             fontSize: 14.sp, color: primaryColor),
                       ),

                     ],
                   )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
