import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/get/my_order_getx_controller.dart';
import 'package:eccomerce_app/models/order.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderItemCard extends StatefulWidget {
  const OrderItemCard({super.key, required this.order});

  final Order order;

  @override
  State<OrderItemCard> createState() => _OrderItemCardState();
}

class _OrderItemCardState extends State<OrderItemCard> {
  void incrementQuantity() {
    if (widget.order.quantity < 10) {
      setState(() {
        widget.order.quantity++;
        // Call the updateQuantity method from the OrderController
        Get.find<MyOrderGetxController>()
            .updateQuantity(widget.order, widget.order.quantity);
        Get.find<MyOrderGetxController>().updateTotalValues();
      });
    }
  }

  void decrementQuantity() {
    if (widget.order.quantity > 1) {
      setState(() {
        widget.order.quantity--;
        // Call the updateQuantity method from the OrderController
        Get.find<MyOrderGetxController>()
            .updateQuantity(widget.order, widget.order.quantity);
        Get.find<MyOrderGetxController>().updateTotalValues();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 90.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: scaffoldBackGround,
      ),
      child: Row(
        children: [
          Container(
            height: 90.w,
            width: 90.w,

            child: Center(
              child: CachedNetworkImage(

                imageUrl:  widget.order.image,
                fit: BoxFit.cover,
                placeholder: (context, url) => SpinKitFadingCircle(
                  color: Colors.grey.shade500,
                  size: 52.0,
                ),
              ),
            ),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.order.name,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25.h,
                      width: 72.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: decrementQuantity,
                            child: const Icon(
                              Icons.remove,
                              size: 12,
                            ),
                          ),
                          Text(
                            widget.order.quantity.toString(),
                            style:  GoogleFonts.roboto(
                                fontSize: 14.sp
                            ),
                          ),
                          GestureDetector(
                            onTap: incrementQuantity,
                            child: const Icon(
                              Icons.add,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\$${widget.order.price * widget.order.quantity}',
                      style:  GoogleFonts.roboto(
                          fontSize: 14.sp,
                        color: primaryColor
                      )
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
