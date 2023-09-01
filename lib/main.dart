import 'package:eccomerce_app/app/screens/main_screens/main_screen.dart';
import 'package:eccomerce_app/routes/app_pages.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'local/shared_pref_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPreferences();
  await ScreenUtil.ensureScreenSize();

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
            getPages: AppPages.routes

          );
        });
  }
}
