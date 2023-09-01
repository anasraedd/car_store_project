import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/app/screens/history_screen.dart';
import 'package:eccomerce_app/get/auto_part_getx_controller.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/car_horizontal_widget.dart';
import 'package:eccomerce_app/widgets/item_add_cart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AutoPartScreen extends GetView<AutoPartGetxController> {
  const AutoPartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AutoPartGetxController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 30.h,),
           Container(
             width: double.infinity,
             height: 50.h,
             child: Stack(
               children: [
                 Align(
                   alignment: AlignmentDirectional.centerStart,
                   child:   IconButton(onPressed: (){
                     Get.back();
                   }, icon: Icon(Icons.arrow_back_outlined, color: Colors.grey,)),
                 ),
                 Align(
                   alignment: AlignmentDirectional.center,
                   child:   Text('Auto parts', textAlign: TextAlign.center, style: GoogleFonts.roboto(
                     fontSize: 14.sp,
                     
                   ),),
                 ),

                 Align(
                   alignment: AlignmentDirectional.centerEnd,
                   child:   Container(
                     height: 30,
                       width: 30,
                       decoration: BoxDecoration(
                         color: scaffoldBackGround,
                         shape: BoxShape.circle
                       ),
                       child: Center(child: SvgPicture.asset('assets/icons/my_car_icon.svg')))
                 )

               ],
             ),
           ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: (){
                Get.to(HistoryScreen());
              },
              child: Container(
                width: double.infinity,
                height: 30.h,
                decoration: BoxDecoration(
                    color: scaffoldBackGround,
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
            SizedBox(height: 30.h),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: controller.itemsAutoParts.map((e) => controller.bulidSecondItemList(context, e)).toList(),
                      ),
                    ),
                  
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'For you',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          'More',
                          style:
                          GoogleFonts.roboto(fontSize: 12.sp, color: primaryColor),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: primaryColor,
                          size: 20,
                        )
                      ],
                    ),
                    SizedBox(height: 20.h,),

                    SizedBox(
                        height: 225.h,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,

                            itemBuilder: (context, index){
                            return  Padding(
                              padding:  EdgeInsetsDirectional.only(start: index > 0 ? 15.w: 0),
                              child: ItemAddCartCard(autoPart: controller.autoPartList[index]),
                            );

                        },
                        itemCount:  controller.autoPartList.length,
                        )),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Popular',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          'More',
                          style:
                          GoogleFonts.roboto(fontSize: 12.sp, color: primaryColor),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: primaryColor,
                          size: 20,
                        )
                      ],
                    ),


                    ListView.builder(
                  physics: NeverScrollableScrollPhysics(),

                  shrinkWrap: true,
                  itemCount: 8,
                  // scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(

                      decoration: BoxDecoration(
                        color: scaffoldBackGround,
                        borderRadius: BorderRadiusDirectional.circular(6)
                      ),
                        margin: EdgeInsetsDirectional.only(bottom: 15.h),
                        child: CarHorizontalWidget(backImageColor: scaffoldBackGround, visableVs: false,));

                    //   Container(
                    //   margin: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 20.h),
                    //   height: 100.h,
                    //   width: double.infinity,
                    //
                    //   decoration: BoxDecoration(
                    //       color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    //   child: Padding(
                    //     padding: EdgeInsets.symmetric(horizontal: 15.w, vertical :15.h),
                    //     child: Row(
                    //       // crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //
                    //         CachedNetworkImage(
                    //             imageUrl:
                    //             'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/Acura%20CDX.png?alt=media&token=c88087ec-8b10-4882-8b3e-9263d1e8affc',
                    //             fit: BoxFit.cover,
                    //             placeholder: (context, url) =>
                    //                 CircularProgressIndicator()
                    //           // errorWidget: (context, url, error) =>
                    //           //     ShimmerLoadingWidget(
                    //           //         height: double.infinity,
                    //           //         width: double.infinity),
                    //           // placeholder: (context, url) =>
                    //           //     SpinKitFadingCircle(
                    //           //       color: Colors.blue,
                    //           //       size: 50.0,
                    //           //     ),
                    //         ),
                    //         SizedBox(width: 15.w,),
                    //         Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             SizedBox(
                    //               width: 15.w,
                    //             ),
                    //             Text(
                    //               'Porsche 911',
                    //               style: GoogleFonts.roboto(
                    //                   fontSize: 14.sp, fontWeight: FontWeight.bold),
                    //             ),
                    //             SizedBox(height: 8.h,),
                    //             Text(
                    //               'Porsche/Luxury',
                    //               style: GoogleFonts.roboto(
                    //                   fontSize: 10.sp, color: primaryColorDisable),
                    //             ),
                    //             SizedBox(height: 8.h,),
                    //             Text(
                    //               '\$26,670',
                    //               style: GoogleFonts.roboto(
                    //                   fontSize: 14.sp, color: primaryColor),
                    //             ),
                    //
                    //           ],
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // );
                  }),

                    // GeneralListHorizontalCard(
                    //   title: 'For You',
                    //   list: AutoPartList,
                    //   itemBuilder: (context, index) {
                    //     final list = AutoPartList[index];
                    //     return ItemAddCartCard(autoPart: list);
                    //   },
                    //   separator: 15,
                    //   heightSizedBox: 225,
                    // ),
                    // SizedBox(height: 28.h),
                    // GeneralListHorizontalCard(
                    //     list: AutoPartList,
                    //     title: 'Popular',
                    //     scrollDirection: Axis.vertical,
                    //     physics: const NeverScrollableScrollPhysics(),
                    //     itemBuilder: (context, index) {
                    //       final list = AutoPartList[index];
                    //       return ItemAutoPartCard(autoPart: list);
                    //     },
                    //     separator: 20,
                    //     heightSizedBox:
                    //         calculateListHeight(AutoPartList, 93, 20),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
