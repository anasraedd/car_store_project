import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/card_news_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import 'box_circler_with_custom_color.dart';

class CardTopDealWidget extends StatelessWidget {
  late int idCar;
  late bool isFavorite;
  late String urlImage;
  late String title;
  late double price;
  late List<Color>? colors;
  late String? descriptionUpcoming;
  late bool isOffer;
  late String? description;

  CardTopDealWidget(
      {required this.idCar,
      required this.isFavorite,
      required this.urlImage,
      required this.title,
      required this.price,
      this.colors,
      this.descriptionUpcoming,
      this.isOffer = false,
      this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225.h,
      width: 150.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 95.h,
            child: Stack(
              children: [
           isOffer ?
           Align(
               child: Container(
                 height: 23.h,
                 width: 46.w,
                 decoration: BoxDecoration(
                     color: primaryColor.withOpacity(0.3),
                     borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10.r), bottomEnd: Radius.circular(10.r))
                 ),
                 child: Center(
                   child: Text('Offer', style: GoogleFonts.roboto(
                       fontSize: 10.sp, color: primaryColor
                   ),),
                 ),
               ),
               alignment: AlignmentDirectional.topStart):Container(),
                Align(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border_rounded,
                      ),
                    ),
                    alignment: AlignmentDirectional.topEnd),
                PositionedDirectional(
                  top: 15.h,
                  start: 15.w,
                  end: 15.w,
                  // alignment: AlignmentDirectional.topCenter,
                  child:
                      //    SvgPicture.asset('assets/icons/car.svg', height: 80, width: 50,),
                      CachedNetworkImage(
                    imageUrl: urlImage,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => SpinKitFadingCircle(
                      color: primaryColor,
                      size: 50.0,
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 15.w),
            child: Text(
              title,
              style: GoogleFonts.roboto(
                  fontSize: 14.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 15.w, top: 8.h),
            child: isOffer? Text(description!, style: GoogleFonts.roboto(
              fontSize: 10.sp, color: primaryColorDisable
            ),) :Text(
              '\$${price}',
              style: GoogleFonts.roboto(fontSize: 12.sp, color: primaryColor),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: SizedBox(
              height: 20.h,
              child: colors != null
                  ? Row(
                      children: [
                        Expanded(
                          child: ScrollConfiguration(
                            behavior: MyBehavior(),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              //  padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 5.h),
                              itemBuilder: (context, index) {
                                return BoxCirclerWithCustomColor(
                                  color: colors![index],
                                );
                              },
                              itemCount: colors!.length,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                        child:
                        isOffer! ? Text(
                          '\$${price}',
                          style: GoogleFonts.roboto(fontSize: 12.sp, color: primaryColor),
                        ):
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: primaryColor,
                        )
                        )
                      ],
                    )
                  : Text(descriptionUpcoming!,
                      style: GoogleFonts.roboto(
                        fontSize: 10.sp,
                        color: primaryColorDisable,
                      )),
            ),
          ),

        ],
      ),
    );
  }
}
