import 'package:eccomerce_app/app/tabs/porsche_tab.dart';
import 'package:eccomerce_app/app/tabs/result_search_tab.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PorscheScreen extends StatefulWidget {

  @override
  State<PorscheScreen> createState() => _PorscheScreenState();
}

class _PorscheScreenState extends State<PorscheScreen>   with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
backgroundColor: scaffoldBackGround,
        title: Text('Porsche', style: GoogleFonts.roboto(
            fontSize: 14.sp
        ),),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_outlined)) ,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'Hot',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          sesultSearchTab(color: Colors.white,),
          SizedBox(height: 30.h,),
          TabBar(
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
          SizedBox(height: 20.h,),
          Expanded(
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    PorscheTab(),
                    PorscheTab(),
                    PorscheTab(),
                    PorscheTab()

                  ]),
            ),
          ),

        ],
      ),
    );
  }
}
