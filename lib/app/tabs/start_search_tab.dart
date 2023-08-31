import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class startSearchTab extends StatelessWidget {
  const startSearchTab({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 20.h),
      child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 20.w,left: 20.w, bottom: 20.h),

              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child:
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.w),

                child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Text('${index+1}', style: GoogleFonts.roboto(color: Colors.red),)),
                    SizedBox(width: 9.w,),
                    Center(
                      child: CachedNetworkImage(
                        imageUrl: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/Acura%20CDX.png?alt=media&token=c88087ec-8b10-4882-8b3e-9263d1e8affc',
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
                    ),
                    SizedBox(width: 20.w,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Acura CDX', style: GoogleFonts.roboto(fontSize: 14.sp, fontWeight: FontWeight.bold),),
                          Text('Honda/Hatchback/\$26,670', style: GoogleFonts.roboto(fontSize: 10.sp, color: primaryColorDisable),)
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('4532', style: GoogleFonts.roboto(fontSize: 14.sp, color: primaryColor),),
                        Text('Sell', style: GoogleFonts.roboto(fontSize: 10.sp, color: primaryColorDisable),)
                      ],
                    ),

                  ],
                ),
              ),

            );
          }),
    );
  }
}
