import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/app/screens/car_info_page.dart';
import 'package:eccomerce_app/app/tabs/faq_tab.dart';
import 'package:eccomerce_app/app/tabs/price_tab.dart';
import 'package:eccomerce_app/app/tabs/review_tab.dart';
import 'package:eccomerce_app/get/car_getx_controller.dart';
import 'package:eccomerce_app/models/car_price.dart';
import 'package:eccomerce_app/models/car_recommend.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/custom_checkbox.dart';
import 'package:eccomerce_app/widgets/custom_rating_bar.dart';
import 'package:eccomerce_app/widgets/key_specs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsCarScreen extends StatefulWidget {
  const DetailsCarScreen({Key? key}) : super(key: key);

  @override
  State<DetailsCarScreen> createState() => _DetailsCarScreenState();
}

class _DetailsCarScreenState extends State<DetailsCarScreen>   with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<CarGetxController>(
        init: CarGetxController(),
        builder: (controller) => Stack(
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(top: 20.h),
              width: double.infinity,
              height: 280.h,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                      child: IconButton(onPressed: (){
                        Get.back();
                      }, icon: Icon(Icons.arrow_back_outlined, color: Colors.grey,)),
                    ),
                  ),
                  PositionedDirectional(
                    end: 0,
                    // alignment: AlignmentDirectional.bottomEnd,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                      child: Row(
                        children: [
                          DropdownButton(
                              borderRadius: BorderRadius.circular(20),
                              style: TextStyle(color: Colors.black), // Text style of selected item
                              dropdownColor: Colors.grey[200], // Background color of dropdown

                              icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey,),

                              items: [
                                DropdownMenuItem(child: Text('Bangkok', style: GoogleFonts.roboto(
                                  color:  Colors.grey
                                ),),  )
                              ], onChanged: (value){

                          }),
                          IconButton(onPressed: (){

                          }, icon: Icon(Icons.favorite_border_rounded, color:  Colors.grey,)),
                          IconButton(onPressed: (){

                          }, icon: SvgPicture.asset('assets/icons/share_icon.svg', height: 18, width: 18,)),

                        ],
                      ),
                    ),
                  ),
                  PositionedDirectional(
                  top: 170.h,
                    start: 20.w,

                    child: SvgPicture.asset('assets/icons/circle_arount.svg'),
                  ),
                  Align(
                    alignment: AlignmentDirectional.center,

                    child: Padding(
                      padding:  EdgeInsets.only(top: 15.h),
                      child: GestureDetector(
                        onPanUpdate: (details) {

    controller.changeValueOfTransform(
    details.delta.dy * 0.01, details.delta.dx * 0.01);

                        },
                        child: Transform(
                          transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateY(controller.rotationY),
                          alignment: FractionalOffset.center,

                          child: CachedNetworkImage(
                            height: 200.h,
                            width: 300.w,
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
                    ),
                  ),
                  PositionedDirectional(
bottom: 0,

                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 69.w),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(CarInfoPage());
                            },
                            child: SizedBox(
                              height: 32.h,
                              width: 48.w,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0.r),

                                    child: CachedNetworkImage(
                                      height: 32.h,
                                      width: 48.w,
                                      imageUrl:
                                      'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd',
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) => SpinKitFadingCircle(
                                        color: Colors.grey.shade500,
                                        size: 52.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 32.h,
                                    width: 48.w,
                                    decoration: BoxDecoration(
                                      color: Colors.black38,
                                      borderRadius: BorderRadius.circular(5.0.r),

                                    ),
                                  ),
                                  PositionedDirectional(
                                    top: 5.h,
                                    start: 5.w,
                                    end: 5.w,
                                    child: Text('+200', style: GoogleFonts.roboto(
                                      fontSize: 8.sp,
                                      color: Colors.white
                                    ),
                                    textAlign: TextAlign.center,),
                                  ),
                                  PositionedDirectional(
                                    bottom: 5.h,
                                    start: 5.w,
                                    end: 5.w,
                                    child: Text('Images', style: GoogleFonts.roboto(
                                        fontSize: 8.sp,
                                        color: Colors.white
                                    ),
                                      textAlign: TextAlign.center,),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15.w,),
                          SizedBox(
                            height: 32.h,
                            width: 48.w,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0.r),

                                  child: CachedNetworkImage(
                                    height: 32.h,
                                    width: 48.w,
                                    imageUrl:
                                    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd',
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => SpinKitFadingCircle(
                                      color: Colors.grey.shade500,
                                      size: 52.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 32.h,
                                  width: 48.w,
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius: BorderRadius.circular(5.0.r),

                                  ),
                                ),
                                PositionedDirectional(
                                  top: 5.h,
                                  start: 5.w,
                                  end: 5.w,
                                  child: Text('+200', style: GoogleFonts.roboto(
                                      fontSize: 8.sp,
                                      color: Colors.white
                                  ),
                                    textAlign: TextAlign.center,),
                                ),
                                PositionedDirectional(
                                  bottom: 5.h,
                                  start: 5.w,
                                  end: 5.w,
                                  child: Text('Exterior', style: GoogleFonts.roboto(
                                      fontSize: 8.sp,
                                      color: Colors.white
                                  ),
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 15.w,),
                          SizedBox(
                            height: 32.h,
                            width: 48.w,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0.r),

                                  child: CachedNetworkImage(
                                    height: 32.h,
                                    width: 48.w,
                                    imageUrl:
                                    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd',
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => SpinKitFadingCircle(
                                      color: Colors.grey.shade500,
                                      size: 52.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 32.h,
                                  width: 48.w,
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius: BorderRadius.circular(5.0.r),

                                  ),
                                ),
                                PositionedDirectional(
                                  top: 5.h,
                                  start: 5.w,
                                  end: 5.w,
                                  child: Text('+200', style: GoogleFonts.roboto(
                                      fontSize: 8.sp,
                                      color: Colors.white
                                  ),
                                    textAlign: TextAlign.center,),
                                ),
                                PositionedDirectional(
                                  bottom: 5.h,
                                  start: 5.w,
                                  end: 5.w,
                                  child: Text('Interior', style: GoogleFonts.roboto(
                                      fontSize: 8.sp,
                                      color: Colors.white
                                  ),
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 15.w,),
                          SizedBox(
                            height: 32.h,
                            width: 48.w,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0.r),

                                  child: CachedNetworkImage(
                                    height: 32.h,
                                    width: 48.w,
                                    imageUrl:
                                    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FRectangle%20496.png?alt=media&token=df9f8892-dd4e-4cb0-85b9-ec45990976dd',
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => SpinKitFadingCircle(
                                      color: Colors.grey.shade500,
                                      size: 52.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 32.h,
                                  width: 48.w,
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius: BorderRadius.circular(5.0.r),

                                  ),
                                ),
                                PositionedDirectional(
                                  top: 5.h,
                                  start: 5.w,
                                  end: 5.w,
                                  child: Text('+200', style: GoogleFonts.roboto(
                                      fontSize: 8.sp,
                                      color: Colors.white
                                  ),
                                    textAlign: TextAlign.center,),
                                ),
                                PositionedDirectional(
                                  bottom: 5.h,
                                  start: 5.w,
                                  end: 5.w,
                                  child: Text('Videos', style: GoogleFonts.roboto(
                                      fontSize: 8.sp,
                                      color: Colors.white
                                  ),
                                    textAlign: TextAlign.center,),
                                )
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
            Container(
              padding:  EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              margin:  EdgeInsets.only(top: 320.h),
              decoration: BoxDecoration(
                color: scaffoldBackGround,

                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: Text('Porsche 718', style: GoogleFonts.roboto(fontSize: 20.sp, fontWeight: FontWeight.w700, ),)),
                      Text('Compare', style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        color: primaryColorDisable,
                      ),),
                      SizedBox(width: 6.w,),
                      CustomCheckbox(
                        value: false,
                        onChanged: (newValue) {
                          // Handle the checkbox value change here
                          print("Checkbox value changed: $newValue");
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Text('\$62,000.00-\$74,000.00', style: GoogleFonts.roboto(fontSize: 15.sp, fontWeight: FontWeight.normal, color: primaryColor, )),
                    SizedBox(height: 25.h,),
                  Row(children: [
                    CustomRatingBar(
                      maxRating: 5,
                      initialRating: 3,
                      onRatingChanged: (rating) {
                        // Handle the rating change here
                        print("New rating: $rating");
                      },
                    ),
                    SizedBox(width: 6.w,),
                    Expanded(child: Text('268 review',  style: GoogleFonts.roboto(fontSize: 12.sp, fontWeight: FontWeight.normal, color: primaryColorDisable, ))),
                    Text('Rate This car', style: GoogleFonts.roboto(fontSize: 12.sp, fontWeight: FontWeight.normal, color: primaryColor, )),

                  ],),
                  SizedBox(height: 25.h,),
                  Row(
                    children: [
                      Expanded(child: Text('Key Specs', style: GoogleFonts.roboto(fontSize: 14.sp, fontWeight: FontWeight.normal, color: primaryColorDisable, ))),
                      Text('All Specs', style: GoogleFonts.roboto(fontSize: 12.sp, fontWeight: FontWeight.normal, color: primaryColor, )),
                      Icon(Icons.arrow_forward_ios_sharp, size: 15, color: primaryColor,)


                    ],
                  ),
                  SizedBox(height: 21.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KeySpecsWidget(icon: SvgPicture.asset('assets/icons/engine_power.svg'), title: '3995 CC', keySpecs: 'Engine Power'),
                      KeySpecsWidget(icon: SvgPicture.asset('assets/icons/max_torque.svg'), title: '360 N·m', keySpecs: 'Max Torque'),
                      KeySpecsWidget(icon: SvgPicture.asset('assets/icons/acceleration.svg'), title: '0-100km/h-4s', keySpecs: 'Acceleration'),



                    ],
                  ),
                  Container(
                    height: 100.h,
                    width:  double.infinity ,
                  )


                  //acceleration

                ],
              ),
            ),
            scroll()
          ],
        ),
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.22.h,
      maxChildSize: 0.88.h,
      minChildSize: 0.21.h,
      // expand: true,

      builder: (context, scrllController) {
        return Container(
          //  padding: EdgeInsets.symmetric(horizontal: 20.w),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r)),
            color: Colors.white,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40.h,
                margin: EdgeInsetsDirectional.only(top: 10.h, start: 10.w, end: 10.w),
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

                        text: 'Price',
                      ),
                      Tab(

                        text: 'Reviews',
                      ),
                      Tab(

                        text: 'FAQ',
                      )
                    ]),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: TabBarView(
                      controller: _tabController,
                      children: [
                        
                        PriceTab(
                            scrollController: scrllController,
                            cars: [CarPrice(name: 'Cayman', description: '1988 cc, Automatic,petrol,9.0 kmpl', price: '\$62,000.00', checkToCompare: false),
                          CarPrice(name: 'Cayman', description: '1988 cc, Automatic,petrol,9.0 kmpl', price: '\$62,000.00', checkToCompare: true),
                          CarPrice(name: 'Cayman', description: '1988 cc, Automatic,petrol,9.0 kmpl', price: '\$62,000.00', checkToCompare: true),
                          CarPrice(name: 'Cayman', description: '1988 cc, Automatic,petrol,9.0 kmpl', price: '\$62,000.00', checkToCompare: false)],
                            carRecommend: [CarRecommend(image:   'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310',
                                name: 'BMW 6 Series GT'),
                              CarRecommend(image:   'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310',
                                  name: 'BMW 6 Series GT'),
                              CarRecommend(image:   'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310',
                                  name: 'BMW 6 Series GT'),
                              CarRecommend(image:   'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310',
                                  name: 'BMW 6 Series GT'),
                              CarRecommend(image:   'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310',
                                  name: 'BMW 6 Series GT'),]),
                        ReviewsTab(scrollController: scrllController,),
                        FaqTab(
                            scrollController: scrllController,
                            faqs: [1,2,3]),


                      ]),
                ),
              )
            ],
          ),
        );
      },
    );
  }

}
