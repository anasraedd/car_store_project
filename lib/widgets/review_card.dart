// ignore_for_file: dead_code


import 'package:eccomerce_app/models/review_news.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.reviews});

  final ReviewNews reviews;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    reviews.image!,
                    height: 30.h,
                    width: 30.w,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    reviews.author!,
                    style: GoogleFonts.roboto(fontSize: 14.sp,
                    color: Color(0xff8E8E93)),
                  ),
                  Text(
                    " .${reviews.createdPublish} hours",
                    style: GoogleFonts.roboto(fontSize: 10.sp,
                        color: Colors.grey),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => reviews.isLike = !reviews.isLike!,
                child: Row(
                  children: [
                    Text(
                      reviews.countLike!.toString(),
                      style: GoogleFonts.roboto(
                          color: reviews.isLike!
                              ? primaryColor
                              : primaryColorDisable),
                    ),
                    SizedBox(width: 7.w),
                    SvgPicture.asset(
                      reviews.isLike! ? '' : 'assets/icons/',
                      height: 12.h,
                      width: 12.w,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 41.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reviews.news!,
                  style:  GoogleFonts.roboto(fontSize: 14.sp,
                      color: Color(0xff8E8E93)),
                ),
                SizedBox(height: 10.h),
                Text(
                  '${reviews.countReply} Replay',
                  style:  GoogleFonts.roboto(fontSize: 14.sp,
                      color: primaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
