import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class ReviewWidget extends StatelessWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
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
      Text(
      'Abbey',
      style: GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      fontSize: 12.sp,
      color: Colors.black),
      ),
              SizedBox(width: 10.w,),
              Text(
                '3 hours ago',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                    color: Colors.grey[300]),
              ),


              Expanded(child: Container()),
              Text(
                '89',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                    color: primaryColorDisable),
              ),
              SizedBox(width: 7.w,),
              SvgPicture.asset('assets/icons/like_outlined.svg'),



            ],
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 55.w, end: 15.w),
            child: Text(
              'Porsche actually wanted to name this something else, but that name was already taycan',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal,
                  fontSize: 12.sp,
                  color: Colors.black),
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 55.w, end: 15.w),
            child: Text(
              '17 Reply',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: primaryColor),
            ),
          ),



        ],
      ),
    );
  }
}
