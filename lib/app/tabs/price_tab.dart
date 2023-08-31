import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/helpers/helpers.dart';
import 'package:eccomerce_app/models/car_price.dart';
import 'package:eccomerce_app/models/car_recommend.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/car_horizontal_widget.dart';
import 'package:eccomerce_app/widgets/custom_checkbox.dart';
import 'package:eccomerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceTab extends StatelessWidget with Helpers {
  late List<CarPrice> cars;
  late List<CarRecommend> carRecommend;
  ScrollController scrollController;
  TextEditingController numberPhoneEditingController = TextEditingController();

  TextEditingController nameEditingController = TextEditingController();
  TextEditingController cityEditingController = TextEditingController();





  PriceTab({required this.cars, required this.carRecommend, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index){
              return Padding(
                padding:  EdgeInsets.symmetric(vertical: 10.h),
                child: Column(

                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(cars[index].name, style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        Text(cars[index].price, style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: primaryColor
                        ),),

                      ],
                    ),
                    SizedBox(height: 5.h,),
                    Row(
                      children: [
                        Expanded(
                          child: Text(cars[index].description, style: GoogleFonts.roboto(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: primaryColorDisable
                          ),),
                        ),
                        Text('Compare', style: GoogleFonts.roboto(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal,
                            color: primaryColorDisable
                        ),),
                        SizedBox(width: 6.w,),
                        CustomCheckbox(
                          value: cars[index].checkToCompare,
                          onChanged: (newValue) {
                            // Handle the checkbox value change here
                            print("Checkbox value changed: $newValue");
                          },
                        ),


                      ],
                    ),
                    SizedBox(height: 15.h,),
                    Divider(height: 1, color: primaryColorDisable,)
                  ],
                ),
              );
            },
            itemCount: cars.length,),
            SizedBox(height: 30.h,),
            Text('Recommend for you', style: GoogleFonts.roboto(
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
                color: primaryColorDisable )),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index){
return Column(
  children: [
    CachedNetworkImage(

        imageUrl: carRecommend[index].image,
        fit: BoxFit.cover,
        placeholder: (context, url) => SpinKitFadingCircle(
          color: Colors.grey.shade500,
          size: 52.0,
        ),
    ),
    SizedBox(height: 5.h,),
    Text(carRecommend[index].name, style: GoogleFonts.roboto(fontSize: 10.sp), textAlign: TextAlign.center,)
  ],
);
            },

            itemCount: carRecommend.length,),

         
            SizedBox(
              width: double.infinity,
              height: 44.h,
              child: ElevatedButton(onPressed: (){
                bottomSheet(context: context, body: Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20), topEnd: Radius.circular(20))),
               
               child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 20.w,),
                 child: SingleChildScrollView(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: EdgeInsets.symmetric( vertical: 20.h),
                         child: Row(

                           children: [
                             Expanded(child: Text('Get Offers from Dealer', style: GoogleFonts.roboto(fontSize: 14.sp, color: primaryColorDisable, ), textAlign: TextAlign.center,)),
                             Icon(Icons.close, color: primaryColorDisable,)
                           ],
                         ),
                       ),
                       CarHorizontalWidget(backImageColor: scaffoldBackGround, visableVs:  false,),
                       SizedBox(
                         height: 30.h,
                       ),
                       Text(
                         'Phone number',
                         style: GoogleFonts.roboto(
                             fontSize: 14.sp,
                             color: primaryColorDisable),
                       ),
                       SizedBox(
                         height: 5.h,
                       ),
                       CustomTextField(
                         hint: 'Enter your Phone number',
                         keyboardType: TextInputType.text,
                         context: context,
                         controller: numberPhoneEditingController,
                         suffix: GestureDetector(
                           onTap: (){
                             numberPhoneEditingController.clear();
                           },
                           child: SvgPicture.asset(
                             'assets/icons/circle_close.svg',
                             height: 24,
                             width: 24,
                           ),
                         ),
                         typeInputBorder: TypeInputBorder.UnderlineInputBorderBottom,
                       ),
                       SizedBox(height: 30.h,),
                       Text(
                         'Name',
                         style: GoogleFonts.roboto(
                             fontSize: 14.sp,
                             color: primaryColorDisable),
                       ),
                       SizedBox(
                         height: 5.h,
                       ),
                       CustomTextField(
                         hint: 'Enter your Name',
                         keyboardType: TextInputType.text,
                         context: context,
                         controller: nameEditingController,
                         suffix: GestureDetector(
                           onTap: (){
                             nameEditingController.clear();
                           },
                           child: SvgPicture.asset(
                             'assets/icons/circle_close.svg',
                             height: 24,
                             width: 24,
                           ),
                         ),
                         typeInputBorder: TypeInputBorder.UnderlineInputBorderBottom,
                       ),
                       SizedBox(height: 30.h,),
                       Text(
                         'City',
                         style: GoogleFonts.roboto(
                             fontSize: 14.sp,
                             color: primaryColorDisable),
                       ),
                       SizedBox(
                         height: 5.h,
                       ),
                       CustomTextField(
                         hint: 'Enter your City',
                         keyboardType: TextInputType.text,
                         context: context,
                         controller: cityEditingController,
                         suffix: GestureDetector(
                           onTap: (){
                             cityEditingController.clear();
                           },
                           child: SvgPicture.asset(
                             'assets/icons/circle_close.svg',
                             height: 24,
                             width: 24,
                           ),
                         ),
                         typeInputBorder: TypeInputBorder.UnderlineInputBorderBottom,
                       ),
                       SizedBox(height: 20.h,),
                       SizedBox(
                         width: double.infinity,
                         height: 44.h,
                         child: ElevatedButton(onPressed: (){

                         }, child: Text('Submit', style: GoogleFonts.roboto(
                             fontSize: 14.sp,
                             color: Colors.white
                         ),),
                           style: ElevatedButton.styleFrom(
                             backgroundColor: primaryColor,
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                             elevation: 0,

                           ),
                         ),
                       )

                     ],
                   ),
                 ),
               ),
                ));
              }, child: Text('Get Offers from Dealer', style: GoogleFonts.roboto(
                fontSize: 14.sp,
                color: Colors.white
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
                elevation: 0,

              ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
