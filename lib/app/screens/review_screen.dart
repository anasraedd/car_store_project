import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/app/tabs/review_tab.dart';
import 'package:eccomerce_app/app/tabs/start_search_tab.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/actions_review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen>   with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: scaffoldBackGround,
        title: Text('Review', style: GoogleFonts.roboto(
            fontSize: 14.sp
        ),),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_outlined)) ,
        actions: [
          Padding(
            padding:  EdgeInsetsDirectional.only(end: 20.w),
            child: SvgPicture.asset('assets/icons/shar_white.svg'),
          ),


        ],

      ),

      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Text('Porsche\'s First Electric Car Named Taycan; Will Rival Tesla Model S ', style: GoogleFonts.roboto(fontSize: 20.sp, fontWeight: FontWeight.bold),),
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20), topEnd: Radius.circular(20))
              ),
              padding: EdgeInsetsDirectional.symmetric(vertical: 10.h),

              child: Column(
                children: [
                  SizedBox(
                    height: 40.h,
                    child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: TabBar(controller: _tabController,
                                labelColor: primaryColor,
                                unselectedLabelColor: primaryColorDisable,
                                labelStyle:GoogleFonts.roboto(

                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                                unselectedLabelStyle: GoogleFonts.roboto(
                                    color: primaryColorDisable,
                                    fontSize: 12.sp
                                ),
                                indicatorColor: primaryColor,

                                indicatorPadding: EdgeInsets.symmetric(horizontal: 25.w),
                                isScrollable: true,

                                tabs: [
                                  Tab(

                                    text: 'Hot',
                                  ),
                                  Tab(

                                    text: 'Latest',
                                  )
                                ]),
                          ),


                          // Text('Dec, 2020')
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: TabBarView(
                          controller: _tabController,
                          children: [
                            ReviewsTab(scrollController: ScrollController(),),
                            ReviewsTab(scrollController: ScrollController(),),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          )

  ]
    ),
      bottomNavigationBar: ActionsReviewWidget(),

    );
  }
}
