import 'package:eccomerce_app/get/static_actions_for_multi_screen_getx_controller.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/contex_extention.dart';
import 'package:eccomerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCountryScreen extends StatefulWidget {
  SelectCountryScreen({Key? key}) : super(key: key);

  @override
  State<SelectCountryScreen> createState() => _SelectCountryScreenState();
}

class _SelectCountryScreenState extends State<SelectCountryScreen> {
  TextEditingController searchTextEditingController = TextEditingController();

  ScrollController _scrollController = ScrollController();



  @override
  Widget build(BuildContext context) {
    //context.removeStatusBarFromScreen(isDark: true);
    return Scaffold(
      backgroundColor: scaffoldBackGround,
      body: SafeArea(
          child: GetX<StaticActionsForMultiScreenGetxVontroller>(
              init: StaticActionsForMultiScreenGetxVontroller(),
              builder: (StaticActionsForMultiScreenGetxVontroller controller) {
                return Column(
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.all(1),
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 30.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.r)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15.w,
                                ),
                                InkWell(
                                  radius: 30,
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                      'assets/icons/icon-search.svg'),
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
                                      onChanged: (String value) {
                                        controller.searchWord.value = value;
                                        controller.searchCountries.value =
                                            controller.countries
                                                .where((p0) =>
                                                p0
                                                    .toLowerCase()
                                                    .contains(
                                                    controller.searchWord
                                                        .toLowerCase()))
                                                .toList();
                                      },
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'Selected: ',
                          style: GoogleFonts.roboto(
                              fontSize: 14.sp, color: Colors.black),
                        ),
                        Text(controller.countrySelected.value,
                            style: GoogleFonts.roboto(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black))
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.r),
                                topLeft: Radius.circular(20.r)),
                            color: Colors.white),
                        child: Stack(
                          //    crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsetsDirectional.only(top: 20.h),
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                'City location',
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: primaryColorDisable),
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(top: 40.h),
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/location.svg'),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text('Bangkok',
                                      style: GoogleFonts.roboto(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black)),
                                  Expanded(child: SizedBox()),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text('Detect',
                                        style: GoogleFonts.roboto(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.normal,
                                            color: primaryColor)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(top: 100.h),
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Text(
                                'Hot City',
                                style: GoogleFonts.roboto(
                                    fontSize: 14.sp,
                                    color: primaryColorDisable),
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(top: 137.h),
                              height: 28.h,
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsetsDirectional.only(end: 40.w),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(
                                    decelerationRate:
                                    ScrollDecelerationRate.fast,
                                  ),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsetsDirectional.only(
                                          start: 15.w),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.w),
                                      decoration: BoxDecoration(
                                          color: scaffoldBackGround,
                                          borderRadius:
                                          BorderRadius.circular(7.r)),
                                      child: Center(
                                        child: Text(
                                          'New York',
                                          style: GoogleFonts.roboto(
                                              fontSize: 16.sp,
                                              color: primaryColorDisable),
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: 3,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(top: 195.h),
                              child: ListView.builder(
                                controller: _scrollController,
                                physics: BouncingScrollPhysics(
                                  decelerationRate: ScrollDecelerationRate.fast,
                                ),
                                itemBuilder: (context, index) {
                                  if (index > 0 &&
                                      controller.countries[index][0] ==
                                          controller.countries[index - 1][0]) {
                                    return ListTile(
                                      onTap: () {
                                        controller.countrySelected.value =
                                        controller.searchWord.isEmpty
                                            ? controller.countries[index]
                                            : controller
                                            .searchCountries[index];
                                      },
                                      title: Text(
                                        controller.searchWord.isEmpty
                                            ? controller.countries[index]
                                            : controller.searchCountries[index],
                                        style: GoogleFonts.roboto(
                                            fontSize: 16.sp,
                                            color: primaryColorDisable),
                                      ),
                                    );
                                  } else {
                                    return Column(
                                      children: [
                                        controller.searchWord.isEmpty
                                            ? Container(
                                          width: double.infinity,
                                          color: scaffoldBackGround,
                                          height: 50.h,
                                          child: Padding(
                                            padding: EdgeInsets.all(15.h),
                                            child: Text(
                                              controller.countries[index]
                                              [0]
                                                  .toUpperCase(),
                                              style: GoogleFonts.roboto(
                                                  fontSize: 18.sp,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        )
                                            : Container(),
                                        ListTile(
                                          onTap: () {
                                            controller.countrySelected.value =
                                            controller.searchWord.isEmpty
                                                ? controller
                                                .countries[index]
                                                : controller
                                                .searchCountries[index];
                                          },
                                          title: Text(
                                            controller.searchWord.isEmpty
                                                ? controller.countries[index]
                                                : controller
                                                .searchCountries[index],
                                            style: GoogleFonts.roboto(
                                                fontSize: 16.sp,
                                                color: primaryColorDisable),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                },
                                itemCount: controller.searchWord.isEmpty
                                    ? controller.countries.length
                                    : controller.searchCountries.length,
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(
                                  top: 100.h,
                                  start:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width - 30),
                              width: 20.w,
                              height: 537.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  color: scaffoldBackGround
                              ),
                              child: Stack(

                                children: [
                                  // Align(
                                  //   alignment: AlignmentDirectional.topCenter,
                                  //   child: Container(
                                  //     alignment: AlignmentDirectional.topCenter,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //
                                  //     height: 22.h,
                                  //     width: 15.w,
                                  //     decoration: BoxDecoration(
                                  //       color: primaryColor2,
                                  //       borderRadius: BorderRadius.circular(15.r)
                                  //     ),
                                  //   ),
                                  // ),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                      onTap: () {
                                      //  StaticActionsForMultiScreenGetxVontroller.to.letterSelectedToFilter.value =controller.letters[index];
                                      controller.letterSelectedToFilter.value = controller.letters[index];

                                      },
                                          child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 2.h),
                                          child: controller
                                              .letterSelectedToFilter.value == controller.letters[index][0] ? Text(
                                            controller.letters[index],
                                            style: GoogleFonts.roboto(
                                                fontSize: 14.sp,
                                                color: primaryColor),) : Text(controller.letters[index], style: GoogleFonts.roboto(fontSize: 14.sp, color:  primaryColorDisable),),
                                        ),
                                      ));
                                    },
                                    itemCount: controller.letters.length,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              })),
    );
  }
}
