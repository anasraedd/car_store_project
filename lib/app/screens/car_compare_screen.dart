
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/get/car_getx_controller.dart';
import 'package:eccomerce_app/models/car.dart';
import 'package:eccomerce_app/models/car_price.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/car_compare_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CarsCompareScreen extends GetView<CarGetxController> {
  const CarsCompareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarGetxController>(
      init: CarGetxController(),
      builder: (controller) {
        return Scaffold(

          appBar: AppBar(
            backgroundColor: scaffoldBackGround,
            elevation: 0,
            leading:     IconButton(onPressed: (){
              Get.back();
            }, icon: Icon(Icons.arrow_back_outlined, color: Colors.grey,)),
            title: Text('2020 Cayman T', textAlign: TextAlign.center,),

          ),
          backgroundColor: scaffoldBackGround,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Container(
                        width: 90.w,
                        height: 90.w,

                        padding: EdgeInsetsDirectional.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),),
                        child:  Center(
                          child: CachedNetworkImage(
                            // height: 50.h,
                            // width: 50.w,
                            imageUrl:
                            'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310',
                            fit: BoxFit.cover,
                            placeholder: (context, url) => SpinKitFadingCircle(
                              color: Colors.grey.shade500,
                              size: 52.0,
                            ),
                          ),
                        ),

                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Porsche 718",
                            style:  GoogleFonts.roboto(
                                fontSize: 20.sp,
                                color: Colors.black,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            "Porsche/Luxury/The 2.3L EcoBoost",
                            style:  GoogleFonts.roboto(
                                fontSize: 10.sp,
                                color: primaryColorDisable
                            )
                          ),
                          SizedBox(height: 13.h),
                          Text(
                            "\$62,000.00-\$74,000.00",
                            style:  GoogleFonts.roboto(
                                fontSize: 14.sp,
                                color: primaryColor
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
                Container(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),

                  width: double.infinity,
                  height: 44.h,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: primaryColor,),
                      Text('Add Cars', style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          color: primaryColor
                      ),),
                    ],
                  ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25), ),
                      side: BorderSide(color: primaryColor),


                      elevation: 0,

                    ),
                  ),
                ),
                SizedBox(height: 30.h),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(30.r), topEnd: Radius.circular(30.r)),
                  ),
                  padding: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Select Similar Cars', style: GoogleFonts.roboto(fontSize: 14.sp, color: primaryColorDisable),),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 20.h),
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10.w,
                            mainAxisSpacing: 10.w, // childAspectRatio: 1.3,
                            mainAxisExtent: 200.h
                           ), itemBuilder: (context, index){

                            return CarCompareCard(
                                car: controller.cars[index]
                            // Car(id: index, name: 'Mercedes SLC', image:
                              // 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310',
                            //     price: 200, stars: 4, ratingsCount: 66, enginePower: enginePower, maxTorque: maxTorque, acceleration: acceleration, brand: brand, checkToCompare: checkToCompare)
                           ,     onChanged: (newValue) {
                              // Handle the checkbox value change here
                              // controller.cars[index].checkToCompare = newValue;
                              controller.changeListCar(index);

                              print("Checkbox value changed: $newValue");
                            },
                            );
                        },

                          itemCount: controller.cars.length,),
                      ),
                    ],
                  ),



                  // GeneralListGridCard(
                  //   physics: NeverScrollableScrollPhysics(),
                  //   list: controller.cars,
                  //   heightSizedBox: calculateGridHeight(controller.cars, 190, 20, 2),
                  //   mainAxisExtent: 200,
                  //   showMoreText: '',
                  //   title: 'Select Similar Cars',
                  //   crossAxisSpacing: 15,
                  //   style: TextStyle(
                  //       color: LightThemeColors.dividerColor,
                  //       fontSize: MyFonts.body2TextSize),
                  //   itemBuilder: (context, index) {
                  //     final list = controller.cars[index];
                  //     return CarCompareCard(car: list);
                  //   },
                  // ),
                ),
              ],
            ),
          ),
        );
      },
    );

  }
}
