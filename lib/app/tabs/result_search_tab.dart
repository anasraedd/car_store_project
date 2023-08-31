import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class sesultSearchTab extends StatelessWidget {
late Color color;

sesultSearchTab({this.color = const Color(0xFFF1F2F3)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Column(

        children: [
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 15.w),
            child: SizedBox(
              height: 180.h,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                  itemCount: 8,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsetsDirectional.only(end: 15.w, bottom: 20.h),
                      height: 180.h,
                      width: 150.w,

                      decoration: BoxDecoration(
                          color: color, borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 9.w),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.favorite, color: Colors.red,),


                              Center(
                                child: CachedNetworkImage(
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
                              ),
                              SizedBox(
                                height: 20.w,
                              ),
                              Text(
                                'Mazda Axela',
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8.h,),
                              Text(
                                '\$26,670',
                                style: GoogleFonts.roboto(
                                    fontSize: 10.sp, color: primaryColor),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
