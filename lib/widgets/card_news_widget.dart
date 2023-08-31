import 'package:cached_network_image/cached_network_image.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CardNewsWidget extends StatelessWidget {
  late String title;
  late String publisher;
  late String datePublish;
  late String urlImage;

  CardNewsWidget(
      {required this.title,
      required this.publisher,
      required this.datePublish,
      required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7.5.h, horizontal: 20.w),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 86.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.roboto(fontSize: 14.sp, color: Colors.black),
                ),
              ),
              Row(
                children: [
                  Text(publisher,
                      style: GoogleFonts.roboto(
                          fontSize: 12.sp, color: primaryColorDisable)),
                  Text(datePublish,  style: GoogleFonts.roboto(fontSize: 12.sp, color: primaryColorDisable))
                ],
              )
            ],
          )),
          SizedBox(width: 5,),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: CachedNetworkImage(
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
    );
  }
}
