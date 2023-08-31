import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/actions_review_widget.dart';
import 'package:eccomerce_app/widgets/card_news_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class ViewVedioScreen extends StatelessWidget {
  const ViewVedioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 254.h,
            child: Stack(
              children: [
                SizedBox(
                  height: 254.h,
                  width: double.infinity,

                  child: CachedNetworkImage(

                    imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => SpinKitFadingCircle(
                      color: Colors.grey.shade500,
                      size: 52.0,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.arrow_back_outlined, color: Colors.grey,)),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: IconButton(onPressed: (){

                    }, icon: SvgPicture.asset('assets/icons/share_vedio.svg')),
                  ),
                )
              ],
            ),

          ),
          SizedBox(height: 15.h,),
          Expanded(
            child:  SingleChildScrollView(
              physics: BouncingScrollPhysics( decelerationRate: ScrollDecelerationRate.fast,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text('2019 Macan Facelift Launched; More Affordable Than Before', style: GoogleFonts.roboto(fontSize: 20.sp, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 30.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
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
                              'Abbey',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Aug 31,2020 / 89623 Views',
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
                              color: Colors.transparent,
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
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
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
                  ),
                  SizedBox(height: 20.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      'Related',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                          color: Colors.black),
                    ),
                  ),

                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Get.toNamed('/view_vedio_screen');
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
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ActionsReviewWidget(),
    );
  }
}
