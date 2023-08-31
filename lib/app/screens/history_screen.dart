import 'package:eccomerce_app/app/screens/result_search_screen.dart';
import 'package:eccomerce_app/app/tabs/start_search_tab.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/contex_extention.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatefulWidget {
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController searchTextEditingController = TextEditingController();

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.removeStatusBarFromScreen(isDark: true);
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
                    searchTextEditingController.clear();
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
                              onSubmitted: (String value){
                            if(value.isNotEmpty){
                              Get.to(ResultSearchScreen(wordSearch: value,));
                            }

                              },
                              onChanged: (String value) {

                              },
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
                Expanded(
                    child: Text(
                  'History',
                  style: GoogleFonts.roboto(
                      fontSize: 20.sp, fontWeight: FontWeight.bold),
                )),
                SvgPicture.asset('assets/icons/delete_icon.svg'),
                SizedBox(
                  width: 7.w,
                ),
                Text(
                  'Clear History',
                  style: GoogleFonts.roboto(fontSize: 12.sp),
                )
              ],
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 103.w,
                  height: 34.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: Text(
                    '3 Series Gt',
                    style: GoogleFonts.roboto(fontSize: 14.sp),
                  )),
                ),
                Container(
                  width: 103.w,
                  height: 34.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: Text(
                    '3 Series Gt',
                    style: GoogleFonts.roboto(fontSize: 14.sp),
                  )),
                ),
                Container(
                  width: 103.w,
                  height: 34.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: Text(
                    '3 Series Gt',
                    style: GoogleFonts.roboto(fontSize: 14.sp),
                  )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            height: 40.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
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

                        text: 'Sales',
                      ),
                      Tab(

                        text: 'Hot',
                      )
                    ]),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  DropdownButton(
                    borderRadius: BorderRadius.circular(20),


                      items: [
                    DropdownMenuItem(child: Text('${getDateTime(DateTime.now())}'), )
                  ], onChanged: (value){
                    
                  }),
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
                startSearchTab(),
                startSearchTab()
              ]),
            ),
          )
        ]),
      ),
    );
  }

   String getDateTime(DateTime dateTime) {

    return DateFormat('MMM, y').format(dateTime);

  }
}
