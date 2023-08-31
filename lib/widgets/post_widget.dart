import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/models/post.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PostWidget extends StatelessWidget {
  late Post post;

  PostWidget(this.post);

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
                    post.nameAuther,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    post.descriptionAuther,
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
            post.tilte,
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
              imageUrl: post.urlImage,
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
          Row(
            children: [
              Expanded(
                child: Text(
                  post.datePublish.toString(),
                  style: GoogleFonts.roboto(fontSize: 10.sp, color: Colors.grey),
                ),
              ),
              SvgPicture.asset('assets/icons/share.svg'),
              SizedBox(width: 6.w,),
              Text(post.numberShare.toString(), style: GoogleFonts.roboto(fontSize: 12.sp),),
              SizedBox(width: 20.w,),
              SvgPicture.asset('assets/icons/comments.svg'),
              SizedBox(width: 6.w,),
              Text(post.numberShare.toString(), style: GoogleFonts.roboto(fontSize: 12.sp),),
              SizedBox(width: 20.w,),
              SvgPicture.asset('assets/icons/likes.svg'),
              SizedBox(width: 6.w,),
              Text(post.numberShare.toString(), style: GoogleFonts.roboto(fontSize: 12.sp),),
              // SizedBox(width: 20.w,)
            ],
          )
        ],
      ),
    );
  }
}
