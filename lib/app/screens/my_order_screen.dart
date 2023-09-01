import 'package:eccomerce_app/get/my_order_getx_controller.dart';
import 'package:eccomerce_app/helpers/helpers.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/order_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrderScreen extends GetView<MyOrderGetxController> with Helpers{
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {


    Get.put(MyOrderGetxController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () {
          bool isPay = controller.isPay.value;
          return Stack(
            children: [
              Column(
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
                            child:    Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text('Edit', style: GoogleFonts.roboto(
                                  fontSize:14.sp,
                                  color: primaryColorDisable
                              ),),
                            )
                        )

                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child:  ListView.builder(
                                physics: NeverScrollableScrollPhysics(),

                                // shrinkWrap: true,
                                itemCount: controller.order.length,
                                // scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  final order = controller.order[index];
                                  return Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10.h),
                                    child: OrderItemCard(order: order),
                                  );
                                    // Container(
                                    //
                                    //   decoration: BoxDecoration(
                                    //       color: scaffoldBackGround,
                                    //       borderRadius: BorderRadiusDirectional.circular(6)
                                    //   ),
                                    //   margin: EdgeInsetsDirectional.only(bottom: 15.h),
                                    //   child:
                                    //   CarHorizontalWidget(backImageColor: scaffoldBackGround, visableVs: false,));

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
                            //     physics: const NeverScrollableScrollPhysics(),
                            //     showMoreText: '',
                            //     title: '${controller.order.length} items selected',
                            //     list: controller.order,
                            //     scrollDirection: Axis.vertical,
                            //     itemBuilder: (context, index) {
                            //       final order = controller.order[index];
                            //       return OrderItemCard(order: order);
                            //     },
                            //     separator: 20,
                            //     heightSizedBox:
                            //         calculateListHeight(controller.order, 95, 20)),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        controller.buildContainer(onClick: (){
                          bottomSheet(context: context, body: controller.buildDisplayContainer());

                        }),
                      ],
                    ),
                  )
                ],
              ),
              // if (isPay) controller.buildDisplayContainer(),

            ],
          );
        },
      ),
    );
  }
}
