
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/models/auto_part.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemAddCartCard extends StatelessWidget {
  const ItemAddCartCard({Key? key, required this.autoPart}) : super(key: key);

  final AutoPart autoPart;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => {},
      // Get.toNamed(Routes.carDetails, arguments: CarDetailsPage(car: car)),
      child: Container(
        width: 150.w,
        height: 225.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: scaffoldBackGround,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 15,
              right: 15,
              left: 15,
              child: CachedNetworkImage(
                // height: 50.h,
                // width: 50.w,
                imageUrl: autoPart.image!,
                fit: BoxFit.cover,
                placeholder: (context, url) => SpinKitFadingCircle(
                  color: Colors.grey.shade500,
                  size: 52.0,
                ),
              ),
            ),
            Positioned(
              left: 15,
              top: 113,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    autoPart.name ?? '',
                    style: GoogleFonts.roboto(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    )
                  ),
                  SizedBox(height: 9.h),
                  Opacity(
                    opacity: .8,
                    child: Text(
                      '${autoPart.opacityTitle}',
                      style: GoogleFonts.roboto(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.normal,
                          color: primaryColorDisable
                      )
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 8,
              left: 15,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${autoPart.price}',
                    style: GoogleFonts.roboto(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                        color: primaryColor
                    )
                  ),
                  GestureDetector(
                    onTap: () => {},
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12.r,
                      child: Icon(Icons.add, color: primaryColor,)
                      // SvgPicture.asset(
                      //   AppIcons.star,
                      //   height: 14.h,
                      //   width: 14.w,
                      //   color: primaryColor,
                      // ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: GestureDetector(
                onTap: () => autoPart.favorite = !autoPart.favorite!,
                child: autoPart.favorite!
                    ? SvgPicture.asset('assets/icons/not_favorite.svg',
                        width: 14.w, height: 14.h)
                    : SvgPicture.asset('assets/icons/favorite.svg',
                        width: 14.w, height: 14.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
