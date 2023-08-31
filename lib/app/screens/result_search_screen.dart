import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/app/tabs/result_search_tab.dart';
import 'package:eccomerce_app/app/tabs/start_search_tab.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/card_news_widget.dart';
import 'package:eccomerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class ResultSearchScreen extends StatefulWidget {
  // const ResultSearchScreen({Key? key}) : super(key: key);
  late String wordSearch;
  ResultSearchScreen({required this.wordSearch});

  @override
  State<ResultSearchScreen> createState() => _ResultSearchScreenState();
}

class _ResultSearchScreenState extends State<ResultSearchScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController searchTextEditingController;

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    searchTextEditingController = TextEditingController(text: widget.wordSearch);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                // IconButton(
                //   padding: EdgeInsets.all(-10),
                //   onPressed: () {},
                //   icon:
                InkWell(
                  onTap:(){
            Get.back();
          },
                  child: Icon(
                    Icons.close,
                    color: Colors.grey.shade500,
                  ),
                ),
                // ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        InkWell(
                          radius: 30,
                          onTap: () {},
                          child:
                              SvgPicture.asset('assets/icons/icon-search.svg'),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Expanded(
                            child: CustomTextField(

                          hint: 'Search',
                          keyboardType: TextInputType.text,
                          context: context,
                          controller: searchTextEditingController,

                          // onChanged: (String value) {
                          //   controller.searchWord.value = value;
                          //   controller.searchCountries.value = controller.countries
                          //       .where((p0) => p0
                          //           .toLowerCase()
                          //           .contains(controller.searchWord.toLowerCase()))
                          //       .toList();
                          // },
                        )),
                        Icon(Icons.mic),
                        SizedBox(
                          width: 5.w,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:  SvgPicture.asset('assets/icons/brand4.svg'),
                ),
                SizedBox(width: 10.w,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mazda', style: GoogleFonts.roboto(fontSize: 20.sp, fontWeight: FontWeight.bold),),
                      SizedBox(height: 7,),
                      Row(
                        children: [
                          Text('Brand introduction', style: GoogleFonts.roboto(fontSize: 10.sp, color: primaryColorDisable),),
                          SizedBox(width: 3,),
                          Icon(Icons.arrow_forward_ios_outlined, size: 10,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 5.w,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('16', style: GoogleFonts.roboto(fontSize: 14.sp, color: primaryColor),),
                    SizedBox(height: 7,),
                    Text('Available', style: GoogleFonts.roboto(fontSize: 10.sp, color: primaryColorDisable),)
                  ],
                ),
              ],
            ),
          ),


            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 29.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20.r), topLeft: Radius.circular(20.r))
              ),


              child: SingleChildScrollView(

                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: TabBar(
                                controller: _tabController,
                                labelColor: primaryColor,
                                unselectedLabelColor: primaryColorDisable,
                                labelStyle: GoogleFonts.roboto(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                ),
                                unselectedLabelStyle: GoogleFonts.roboto(
                                    color: primaryColorDisable, fontSize: 12.sp),
                                indicatorColor: primaryColor,
                                indicatorPadding:
                                    EdgeInsets.symmetric(horizontal: 25.w),
                                isScrollable: true,
                                tabs: [
                                  Tab(
                                    text: 'Hot',
                                  ),
                                  Tab(
                                    text: 'Sedan',
                                  ),
                                  Tab(
                                    text: 'SUV',
                                  ),
                                  Tab(
                                    text: 'Luxury',
                                  )
                                ]),
                          ),

                          GestureDetector(
                            onTap: (){
                              Get.toNamed('/porsche_screen');
                            },
                            child: Row(
                              children: [
                                Text(
                                  'All',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12.sp, color: primaryColor),
                                ),
                                SizedBox(width: 6.w,),
                                Icon(Icons.arrow_forward_ios_outlined, color: primaryColor, size: 15,)
                              ],
                            ),
                          ),

                          // Text('Dec, 2020')
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h,),

                    SizedBox(
                      height: 200.h,
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: TabBarView(
                            controller: _tabController,
                            children: [sesultSearchTab(), sesultSearchTab(), sesultSearchTab(), sesultSearchTab()]),
                      ),
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
                          return CardNewsWidget(
                              title: 'Porsche Type 997 911 GT2 RSR Flat Out At Monza',
                              publisher: 'By Akshit',
                              datePublish: 'Sep 05,2020',
                              urlImage: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd');
                        },
                        itemCount: 2,
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
                              'Videos',
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
                      height: 200.h,
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: ListView.builder(

                       scrollDirection: Axis.horizontal,

                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  clipBehavior: Clip.hardEdge,
                                  height: 100.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                  margin: EdgeInsets.all(5),
                                  child: CachedNetworkImage(
                                    imageUrl:  'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd',
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => SpinKitFadingCircle(
                                      color: primaryColor,
                                      size: 50.0,
                                    ),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                  ) ,
                                ),
                                SizedBox(height: 8.h,),
                                Text('Mazda 6-test 01', style: GoogleFonts.roboto(
                                  fontSize: 14.sp,
                                  color: Colors.black
                                ),)
                              ],
                            );
                          },
                          itemCount: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
            ),

        ]),
      ),
    );
  }

  void _onSubmitted(String value) {
    print('Text submitted: $value');
    // Implement your action here
  }
}
