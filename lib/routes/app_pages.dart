
import 'package:eccomerce_app/app/screens/auth/select_country_screen.dart';
import 'package:eccomerce_app/app/screens/auth/sign_up_input_data_screen.dart';
import 'package:eccomerce_app/app/screens/auth/sign_up_input_number_phone_screen.dart';
import 'package:eccomerce_app/app/screens/auth/verrification_screen.dart';
import 'package:eccomerce_app/app/screens/auto_part_screen.dart';
import 'package:eccomerce_app/app/screens/details_car_screen.dart';
import 'package:eccomerce_app/app/screens/launch_screen.dart';
import 'package:eccomerce_app/app/screens/main_screens/main_screen.dart';
import 'package:eccomerce_app/app/screens/my_order_screen.dart';
import 'package:eccomerce_app/app/screens/news_screen.dart';
import 'package:eccomerce_app/app/screens/porsche_screen.dart';
import 'package:eccomerce_app/app/screens/review_screen.dart';
import 'package:eccomerce_app/app/screens/view_vedio_screen.dart';
import 'package:get/get.dart';


class AppPages {
  AppPages._();

  static final routes = [
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
    GetPage(name: '/auto_part_screen', page: ()=> AutoPartScreen()),
    GetPage(name: '/my_order_screen', page: ()=> MyOrderScreen()),




  ];
}
