import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/box_circler_with_custom_color.dart';
import 'package:eccomerce_app/widgets/card_news_widget.dart';
import 'package:eccomerce_app/widgets/card_top_deal_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  List<String> images = [
    "https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fchalet1.jpg?alt=media&token=e72ecc96-79e0-48a9-b0d5-33102a82b457",
    "https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fchalet2.jpg?alt=media&token=fb87af8c-f320-4f03-90b1-4f25ae0ed8aa",
    "https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fchalet3.jpg?alt=media&token=95ee211f-f8e5-49f4-8656-07ce926b3d45",
    "https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fchalet4.jpg?alt=media&token=015d023e-05b9-425e-89ef-ec883fba2c47"
  ];

  List<String> brands = ['Giulia', 'GT-R', 'Elmiraj', 'RX-VISION'];

  List<Color> colors = [primaryColor, Colors.red, Colors.blue, Colors.orange];
  final controller = PageController(
    viewportFraction: 1,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(
        decelerationRate: ScrollDecelerationRate.fast,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 168.h,
            // width: 280.w,
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17.r),
                boxShadow: [
                  BoxShadow(color: Colors.grey[400]!, blurRadius: 6),
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 168.h,
                  child: Stack(
                    children: [
                      ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: PageView.builder(
                          scrollDirection: Axis.horizontal,
                          pageSnapping: true,
                          controller: controller,
                          itemCount: images.length,
                          itemBuilder: (_, index) {
                            return SizedBox(
                              height: double.infinity,
                              child: ClipRRect(
                                // borderRadius: BorderRadius.circular(10.r),
                                // decoration: BoxDecoration(
                                //    // color: Colors.white,
                                //     borderRadius: BorderRadius.circular(17.r),
                                //     // boxShadow: [
                                //     //   BoxShadow(color: Colors.grey[400]!, blurRadius: 6),
                                //     // ]
                                // ),
                                child: CachedNetworkImage(
                                  imageUrl: images[index],
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      SpinKitFadingCircle(
                                    color: primaryColor,
                                    size: 50.0,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.h),
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: images.length,
                            effect: ExpandingDotsEffect(
                                dotHeight: 8.w,
                                dotWidth: 8.w,
                                dotColor: Colors.black38,
                                spacing: 5.w,
                                activeDotColor: primaryColor),
                            onDotClicked: (index) {
                              controller.animateToPage(index,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                          ),
                        ),
                      ),
                      PositionedDirectional(
                          bottom: 41.h,
                          start: 21.w,
                          child: Text(
                            'Extreme bump test',
                            style: GoogleFonts.roboto(
                                fontSize: 12.sp, color: primaryColorDisable),
                          )),
                      PositionedDirectional(
                          bottom: 20.h,
                          start: 20.w,
                          child: Text(
                            'First test! 100km/h extreme bump test',
                            style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          SizedBox(
            height: 40.h,
            child: ListView.builder(
              padding: EdgeInsetsDirectional.only(end: 10.w),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsetsDirectional.only(start: 10.w),
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                  //  height: 30.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Center(
                      child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/brand${index + 1}.svg'),
                      Text(brands[index]),
                    ],
                  )),
                );
              },
              itemCount: brands.length,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Top deal',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: Colors.black),
                  ),
                ),
                Text(
                  'More',
                  style:
                      GoogleFonts.roboto(fontSize: 12.sp, color: primaryColor),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: primaryColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 230.h,
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Get.toNamed('/details_car_screen');
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: CardTopDealWidget(
                          idCar: 1,
                          isFavorite: false,
                          urlImage:
                              "https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car2.png?alt=media&token=a7d7dff0-4a10-46d2-b55b-15b32a3f41db",
                          title: 'Lamborghini',
                          price: 67.600,
                          colors: colors),
                    ),
                  );
                },
                itemCount: 6,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Popular brands',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: Colors.black),
                  ),
                ),
                Text(
                  'More',
                  style:
                      GoogleFonts.roboto(fontSize: 12.sp, color: primaryColor),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: primaryColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(end: 15.w),
            height: 102.h,
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.only(start: 15.w),
                    child: Container(
                      height: 102.w,
                      width: 102.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 16.h,
                            ),
                            SvgPicture.asset(
                              'assets/icons/brand${index + 1}.svg',
                              width: 60,
                              height: 45,
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            Text(
                              'Mercedes',
                              style: GoogleFonts.roboto(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                  color: primaryColorDisable),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 4,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Upcoming',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: Colors.black),
                  ),
                ),
                Text(
                  'More',
                  style:
                      GoogleFonts.roboto(fontSize: 12.sp, color: primaryColor),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: primaryColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 230.h,
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: CardTopDealWidget(
                        idCar: 1,
                        isFavorite: false,
                        urlImage:
                            "https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car2.png?alt=media&token=a7d7dff0-4a10-46d2-b55b-15b32a3f41db",
                        title: 'Lamborghini',
                        price: 67.600,
                        descriptionUpcoming: 'Expected Launch-Sep 18',
                        // colors: colors
                      ),
                    ),
                  );
                },
                itemCount: 6,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'News',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: Colors.black),
                  ),
                ),
                Text(
                  'More',
                  style:
                      GoogleFonts.roboto(fontSize: 12.sp, color: primaryColor),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: primaryColor,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Get.toNamed('/news_screen');
                  },
                  child: CardNewsWidget(
                      title: 'Porsche Type 997 911 GT2 RSR Flat Out At Monza',
                      publisher: 'By Akshit',
                      datePublish: 'Sep 05,2020',
                      urlImage:
                      'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd'),
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
