
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/models/news.dart';
import 'package:eccomerce_app/models/post.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class NewsWidget extends StatelessWidget {
  late News news;

  NewsWidget({required this.news});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                color: Colors.transparent,
                height: 52,
                width: 52,
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(55555),

                  // backgroundColor: secondaryColor,

                  child: CachedNetworkImage(
                    height: 52,
                    width: 52,
                    imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2F-qm2h18.jpg?alt=media&token=9b7af4ec-a00b-44d7-8061-dc8b57be48ac',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => SpinKitFadingCircle(
                      color: Colors.grey.shade500,
                      size: 52.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.nameAuther,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    news.descriptionAuther,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                        color: Colors.grey),
                  ),
                ],
              ),
              Expanded(child: Container()),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                // height: 24.h,
                // width: 71.w,
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),

                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Follow',
                        style: GoogleFonts.roboto(
                            fontSize: 12.sp, color: primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            news.tilte,
            style: GoogleFonts.roboto(
              fontSize: 12.sp,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 188.h,
            width: double.infinity,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: CachedNetworkImage(
              height: 52,
              width: 52,
              imageUrl: news.urlImage,
              fit: BoxFit.cover,
              placeholder: (context, url) => SpinKitFadingCircle(
                color: Colors.grey.shade500,
                size: 52.0,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 60.h,
            width: double.infinity,
decoration: BoxDecoration(
  color: Color(0xFFF1F2F3),
  borderRadius: BorderRadius.circular(7)
),
            child: Row(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
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
                SizedBox(width: 15.w,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$26,670',
                          style: GoogleFonts.roboto(
                              fontSize: 14.sp, color: primaryColor),
                        ),
                        SizedBox(height: 8.h,),
                        Text(
                          'Price',
                          style: GoogleFonts.roboto(
                              fontSize: 10.sp, color: primaryColorDisable),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
          SizedBox(height: 20.h,),
          Text('Porsche says that the name Taycan roughly translates to “lively young horse”, paying homage to the leaping horse that has been featured on the brand’s crest logo since 1952.12', style: GoogleFonts.roboto(
            fontSize: 12.sp,
            color: primaryColorDisable
          ),),
          SizedBox(height: 20.h,),
          Container(
            width: 190.w,
            height: 25.h,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                SizedBox(width: 10.w,),

                Text('Rate this news', style: GoogleFonts.roboto(
                  fontSize: 10.sp,
                  
                ), ),
                SizedBox(width: 11.w,),
                
                Icon(Icons.star_border_outlined, size: 15,),
                SizedBox(width: 4.w,),
                Icon(Icons.star_border_outlined, size: 15 ),
                SizedBox(width: 4.w,),
                Icon(Icons.star_border_outlined, size: 15 ),
                SizedBox(width: 4.w,),
                Icon(Icons.star_border_outlined, size: 15 ),
                SizedBox(width: 4.w,),
                Icon(Icons.star_border_outlined, size: 15),
                SizedBox(width: 4.w,),


              ],
            )
          )


        ],
      ),
    );
  }
}
