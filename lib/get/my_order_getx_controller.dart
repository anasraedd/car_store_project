import 'package:eccomerce_app/helpers/helpers.dart';
import 'package:eccomerce_app/models/order.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrderGetxController extends GetxController with Helpers{
  String orderTime = '7:15 pm';
  String deliveryTime = '18:00 pm';
  RxBool isPay = false.obs;
  double totalDiscount = 0.0;
  double totalPriceAfterDiscount = 0.0;

  // List to store the orders
  List<Order> order = [
    Order(
      name: 'Orion Motor Wheel Spacers',
      quantity: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/auto_parts.png?alt=media&token=82b91dd9-3282-41ae-bd27-e08fcaf160e2',
      price: 627,
      discount: 18,
    ),
    Order(
      name: 'Child-Seat-Cover',
      quantity: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fcar-item1.png?alt=media&token=028e12f3-85c7-4750-b11e-16e7ac6f7c2d',
      price: 68,
      discount: 5,
    ),
    Order(
      name: 'car-covers',
      quantity: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fcar_item2.png?alt=media&token=c44d2fd7-2944-40eb-8021-c5afa52da7a6',
      price: 700,
      discount: 27,
    ),
    // Add more orders as needed
  ].obs;

  void updateTotalValues() {
    totalDiscount = 0.0;
    totalPriceAfterDiscount = 0.0;

    for (var orderItem in order) {
      orderItem.totalAfterDiscount = orderItem.price * orderItem.quantity - orderItem.discount;
      totalDiscount += orderItem.discount;
      totalPriceAfterDiscount += orderItem.totalAfterDiscount;
    }
  }

  // Method to update the quantity of an order item
  void updateQuantity(Order item, int newQuantity) {
    item.quantity = newQuantity;
    updateTotalValues();
  }

  // Method to update the price of an order item
  void updatePrice(Order item, double newPrice) {
    item.price = newPrice;
    updateTotalValues();
  }

  // Method to update isPay value
  void updateIsPay(bool newValue) {
    isPay.value = newValue;
  }

  @override
  void onInit() {
    // Calculate the total values when the controller is initialized
    updateTotalValues();
    super.onInit();
  }

  Widget buildContainer({required Function onClick}) {
    return Container(
      height: 310.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: scaffoldBackGround,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text('Discound'), Text('\$$totalDiscount')],
          ),
          SizedBox(height: 18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text('Total'), Text('\$$totalPriceAfterDiscount')],
          ),
          SizedBox(height: 58.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text('Order time'), Text(orderTime)],
          ),
          SizedBox(height: 18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('expected delivery time'),
              Text(deliveryTime)
            ],
          ),
          SizedBox(height: 35.h),
          SizedBox(
            width: double.infinity,
            height: 44.h,
            child: ElevatedButton(onPressed: (){
              // isPay.value = true;
              onClick();
            }, child: Text('Pay now', style: GoogleFonts.roboto(
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
    );
  }

  Widget buildDisplayContainer() {
    return Container(
      height: 384.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ Text('Discound', style:  GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 14.sp,

            )), Text('\$$totalDiscount', style:  GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 14.sp,

            ))],
          ),
          SizedBox(height: 18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ Text('Total', style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold
            )), Text('\$$totalPriceAfterDiscount', style: GoogleFonts.roboto(
                color: primaryColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold
            ))],
          ),
          SizedBox(height: 38.h),
          Text('Address', style:  GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 14.sp,

          )),
          SizedBox(height: 13.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  '6360 Sunset Blvd, Los Angeles,\n CA 90028 United States', style: GoogleFonts.roboto(
                color: primaryColorDisable,
                fontSize: 12.sp,

              )),
              GestureDetector(
                child:  Text('Edit', style: GoogleFonts.roboto(
                    color: primaryColor,
                    fontSize: 14.sp
                ),),
                onTap: () => {},
              )
            ],
          ),
          SizedBox(height: 28.h),
          Text('Paymnet', style:  GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 14.sp,

          )),
          SizedBox(height: 13.h),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/icons/master_card.svg'),
              SizedBox(width: 10.w,),
              Text(
                  '**** **** **** 3247', style: GoogleFonts.roboto(
                color: primaryColorDisable,
                fontSize: 12.sp,

              )),
              Spacer(),
              GestureDetector(
                child: const Icon(Icons.keyboard_arrow_down),
                onTap: () => {},
              )
            ],
          ),
          SizedBox(height: 44.5.h),
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
      ));

  }
}
