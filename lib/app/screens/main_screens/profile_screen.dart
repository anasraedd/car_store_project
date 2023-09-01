import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/commom_funtions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(shape: BoxShape.circle
                    // borderRadius: BorderRadius.circular(10.r),
                    ),
                child: CachedNetworkImage(
                  height: 80,
                  width: 80,
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2F-qm2h18.jpg?alt=media&token=9b7af4ec-a00b-44d7-8061-dc8b57be48ac',
                  fit: BoxFit.cover,
                  placeholder: (context, url) => SpinKitFadingCircle(
                    color: Colors.grey.shade500,
                    size: 52.0,
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anas',
                    style: GoogleFonts.roboto(
                        fontSize: 20.sp, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'BMW 3 Series/7 Series owner',
                    style:
                        GoogleFonts.roboto(fontSize: 10.sp, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                // height: 24.h,
                // width: 71.w,
                decoration: BoxDecoration(
                    // color: Colors.white,
                    border: Border.all(color: primaryColor),
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
              Column(
                children: [
                  Text(
                    '17',
                    style: GoogleFonts.roboto(
                        fontSize: 14.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Following',
                    style: GoogleFonts.roboto(
                        fontSize: 12.sp, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '8517',
                    style: GoogleFonts.roboto(
                        fontSize: 14.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Follower',
                    style: GoogleFonts.roboto(
                        fontSize: 12.sp, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '17',
                    style: GoogleFonts.roboto(
                        fontSize: 14.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Posts',
                    style: GoogleFonts.roboto(
                        fontSize: 12.sp, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Expanded(
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.r),
                      topLeft: Radius.circular(20.r))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 21.h,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/common_functions.svg'),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              'Common Functions',
                              style: GoogleFonts.roboto(fontSize: 12.sp),
                            )
                          ],
                        ),
                        SizedBox(height: 15.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Get.toNamed('/my_order_screen');
                                },
                                child: CommomFuntions(title: 'My order', nameIcon: 'my_order')),
                            CommomFuntions(title: 'Maintain', nameIcon: 'maintain'),
                            GestureDetector(
                              onTap: (){
                                Get.toNamed('/auto_part_screen');
                              },
                              child: CommomFuntions(
                                  title: 'Auto parts', nameIcon: 'auto_parts'),
                            ),
                            CommomFuntions(
                                title: 'Driving skills', nameIcon: 'driving_skills')
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/my_cars_icon.svg'),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              'My cars',
                              style: GoogleFonts.roboto(fontSize: 12.sp),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              'My cars',
                              style: GoogleFonts.roboto(fontSize: 14.sp),
                            )),
                            SizedBox(
                              width: 8.w,
                            ),
                            Transform.flip(
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.grey,
                                size: 18,
                              ),
                              flipX: true,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Divider(
                          height: 1,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Like List',
                              style: GoogleFonts.roboto(fontSize: 14.sp),
                            )),
                            SizedBox(
                              width: 8.w,
                            ),
                            Transform.flip(
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.grey,
                                size: 18,
                              ),
                              flipX: true,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/others_icon.svg'),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              'Others',
                              style: GoogleFonts.roboto(fontSize: 12.sp),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),

                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Feedback',
                              style: GoogleFonts.roboto(fontSize: 14.sp),
                            )),
                            SizedBox(
                              width: 8.w,
                            ),
                            Transform.flip(
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.grey,
                                size: 18,
                              ),
                              flipX: true,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Divider(
                          height: 1,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(' Log Out',
                            style: GoogleFonts.roboto(
                                fontSize: 14.sp, color: primaryColor)),
                      ],
                    ),
                  ),
                ),
              )),
        )
      ],
    );
  }
}
