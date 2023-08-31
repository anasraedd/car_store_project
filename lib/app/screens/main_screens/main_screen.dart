import 'package:eccomerce_app/app/screens/history_screen.dart';
import 'package:eccomerce_app/app/screens/main_screens/buy_car_screen.dart';
import 'package:eccomerce_app/app/screens/main_screens/community_screen.dart';
import 'package:eccomerce_app/app/screens/main_screens/home_screen.dart';
import 'package:eccomerce_app/app/screens/main_screens/profile_screen.dart';
import 'package:eccomerce_app/app/screens/result_search_screen.dart';
import 'package:eccomerce_app/get/static_actions_for_multi_screen_getx_controller.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/contex_extention.dart';
import 'package:eccomerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  TextEditingController searchTextEditingController = TextEditingController();

  List<Widget> screens = [
    HomeScreen(),
    BuyCarScreen(),
    CommunityScreen(),
    ProfileScreen()

  ];

  @override
  Widget build(BuildContext context) {
    context.removeStatusBarFromScreen(isDark: true);

    return GetX<StaticActionsForMultiScreenGetxVontroller>(
        init: StaticActionsForMultiScreenGetxVontroller(),
    builder: (StaticActionsForMultiScreenGetxVontroller controller) {
      return Scaffold(
          backgroundColor: scaffoldBackGround,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 50.h,

                child: controller.selectedIndex.value < 3 ? Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    controller.selectedIndex.value < 2? Text(
                      'Bangkok',
                      style: GoogleFonts.roboto(
                          fontSize: 12.sp, color: primaryColorDisable),
                    ) : Container(),
                    SizedBox(
                      width: controller.selectedIndex.value < 2? 6.4.w : 0,
                    ),
                    controller.selectedIndex.value < 2?  SvgPicture.asset('assets/icons/arrow_down.svg') : Container(),
                    SizedBox(
                      width: 20.8.w,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Get.to(HistoryScreen());
                        },
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
                                  child: GestureDetector(
                                    onTap: (){
                                      Get.to(HistoryScreen());
                                    },
                                    child: Text('Search', style: GoogleFonts.roboto(
                                      color: Colors.grey[300],
                                      fontSize: 15.sp
                                    ),)
                                      /*
                                      CustomTextField(
                                      hint: 'Search',
                                      keyboardType: TextInputType.text,
                                      context: context,
                                      controller: searchTextEditingController,
                                      readOnly:  true,

                                      onChanged: (String value) {},
                                    ),
                                       */
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 21,
                    ),

                    SizedBox(
                      height:35,
                      width: 35,
                      child:
                    controller.selectedIndex.value == 0? SvgPicture.asset('assets/icons/notification.svg') : controller.selectedIndex.value == 1? SvgPicture.asset('assets/icons/filter.svg') : SvgPicture.asset('assets/icons/publish.svg') ,

                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ) : Align(
                    alignment: AlignmentDirectional.topCenter,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      children: [
                        GestureDetector(

                          child: Icon(Icons.arrow_back_sharp), ),
                        Expanded(child: Container()),
                        SizedBox(
                          height: 35,
                            width: 35,
                            child: SvgPicture.asset('assets/icons/notification.svg')),
                        SizedBox(width: 10.w,),
                        SizedBox(
                            height: 35,
                            width: 35,
                            child: SvgPicture.asset('assets/icons/setting.svg'))

                      ],
                    ),
                  ),
                ),
                ),
                Expanded(child: screens[controller.selectedIndex.value]),
                Container(
                  color: controller.selectedIndex.value == 3 ? Colors.white : scaffoldBackGround,
                  child: SizedBox(
                    height: 83.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      child: BottomNavigationBar(
                        currentIndex: controller.selectedIndex.value,

                        type: BottomNavigationBarType.fixed,
                        showSelectedLabels: true,
                        selectedItemColor: primaryColor,

                        unselectedLabelStyle: GoogleFonts.roboto(
                          color: primaryColorDisable,
                        ),
                        unselectedItemColor: primaryColorDisable,
                        selectedLabelStyle: GoogleFonts.roboto(
                          color: primaryColor,
                        ),
                        onTap: (int selectedItemIndex) {
                          if (selectedItemIndex < 4) {
                            controller.selectedIndex.value = selectedItemIndex;
                          }
                        },
                        items: [
                          BottomNavigationBarItem(
                            icon: SvgPicture.asset('assets/icons/home_icon.svg',),
                            activeIcon:  SvgPicture.asset('assets/icons/selected_home_icon.svg',),
                            label: 'Home',
                            //  tooltip: 'ff'
                          ),
                          BottomNavigationBarItem(
                              icon: SvgPicture.asset(
                                'assets/icons/buy_car_icon.svg',

                              ),
                              activeIcon: SvgPicture.asset(
                                'assets/icons/selected_buy_car_icon.svg',

                              ),
                              label: 'Buy car'),
                          BottomNavigationBarItem(
                              icon: SvgPicture.asset(
                                'assets/icons/community_icon.svg',
                              ),
                              activeIcon: SvgPicture.asset(
                                'assets/icons/selected_community_icon.svg', ),
                              label: 'Community'),
                          BottomNavigationBarItem(
                              icon: SvgPicture.asset('assets/icons/peofile_icon.svg', ),
                              activeIcon: SvgPicture.asset('assets/icons/selected_peofile_icon.svg',),
                              label: 'Profile'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          );
    });
    }
  }
