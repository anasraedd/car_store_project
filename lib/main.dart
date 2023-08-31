import 'package:eccomerce_app/app/screens/auth/select_country_screen.dart';
import 'package:eccomerce_app/app/screens/auth/sign_up_input_data_screen.dart';
import 'package:eccomerce_app/app/screens/auth/sign_up_input_number_phone_screen.dart';
import 'package:eccomerce_app/app/screens/auth/verrification_screen.dart';
import 'package:eccomerce_app/app/screens/car_compare_screen.dart';
import 'package:eccomerce_app/app/screens/compare_cars_screen.dart';
import 'package:eccomerce_app/app/screens/details_car_screen.dart';
import 'package:eccomerce_app/app/screens/history_screen.dart';
import 'package:eccomerce_app/app/screens/launch_screen.dart';
import 'package:eccomerce_app/app/screens/main_screens/main_screen.dart';
import 'package:eccomerce_app/app/screens/news_screen.dart';
import 'package:eccomerce_app/app/screens/popular_brands_screen.dart';
import 'package:eccomerce_app/app/screens/porsche_screen.dart';
import 'package:eccomerce_app/app/screens/review_screen.dart';
import 'package:eccomerce_app/app/screens/view_vedio_screen.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Car App',
            themeMode: ThemeMode.light,
            theme: buildLightTheme(),
           // initialRoute: '/select_country_screen',
            home: MainScreen(),
            // home: CompareCarsScreen(),
            getPages: [
              // GetPage(name: '/', page: ()=> LaunchScreen()),
              GetPage(name: '/sign_up_input_number_phone_screen', page: ()=> SignUpInputNumberPhoneScreen()),
              GetPage(name: '/verrification_screen', page: ()=> VerrificationScreen()),
              GetPage(name: '/sign_up_input_data_screen', page: ()=> SignUpInputDataScreen()),
              GetPage(name: '/select_country_screen', page: ()=> SelectCountryScreen()),
              GetPage(name: '/main_screen', page: ()=> MainScreen()),
              GetPage(name: '/porsche_screen', page: ()=> PorscheScreen()),
              GetPage(name: '/news_screen', page: ()=> NewsScreen()),
              GetPage(name: '/review_screen', page: ()=> ReviewScreen()),
              GetPage(name: '/view_vedio_screen', page: ()=> ViewVedioScreen()),
              GetPage(name: '/details_car_screen', page: ()=> DetailsCarScreen()),










            ],

          );
        });
  }
}
