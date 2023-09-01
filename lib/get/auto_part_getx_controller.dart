import 'package:eccomerce_app/models/auto_part.dart';
import 'package:eccomerce_app/models/auto_parts_model.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AutoPartGetxController extends GetxController {
  List<AutoPartsModel> itemsAutoParts = [
    AutoPartsModel(name: "Category", image: 'assets/icons/category.svg'),
    AutoPartsModel(name: "Wheels", image: 'assets/icons/wheels.svg'),
    AutoPartsModel(name: "Light", image: 'assets/icons/light.svg'),
    AutoPartsModel(name: "Interior", image: 'assets/icons/Interior.svg'),
  ].obs;

  List<AutoPart> autoPartList = [
    AutoPart(
        image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fcar-item.png?alt=media&token=804ce683-69f5-42a5-ba25-29c8ac7ef492',
        price: '120',
        favorite: true,
        opacityTitle: 'mdkfkhjfk',
        name: 'Sunpie 7 Headlight',
        id: 1),
    AutoPart(
        image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fcar-item1.png?alt=media&token=028e12f3-85c7-4750-b11e-16e7ac6f7c2d',
        price: '120',
        favorite: true,
        opacityTitle: 'mdkfkhjfk',
        name: 'Sunpie 7 Headlight',
        id: 2),
    AutoPart(
        image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fcar_item2.png?alt=media&token=c44d2fd7-2944-40eb-8021-c5afa52da7a6',
        price: '120',
        favorite: true,
        opacityTitle: 'mdkfkhjfk',
        name: 'Sunpie 7 Headlight',
        id: 3),
    AutoPart(
        image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fcar-item1.png?alt=media&token=028e12f3-85c7-4750-b11e-16e7ac6f7c2d',
        price: '120',
        favorite: true,
        opacityTitle: 'mdkfkhjfk',
        name: 'Sunpie 7 Headlight',
        id: 4),
    AutoPart(
        image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2Fcar_item2.png?alt=media&token=c44d2fd7-2944-40eb-8021-c5afa52da7a6',
        price: '120',
        favorite: true,
        opacityTitle: 'mdkfkhjfk',
        name: 'Sunpie 7 Headlight',
        id: 5),


  ].obs;


  Widget bulidSecondItemList(context, AutoPartsModel autoPartsModel) => Column(
    children: [
      Container(
            width: 54.w,
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: scaffoldBackGround,
            ),
            child: Padding(
              padding: EdgeInsets.all(18.r),
              child: SvgPicture.asset(
                "${autoPartsModel.image}",
                height: 18.h,
                width: 18.w,
                fit: BoxFit.contain,
              ),
            ),
          ),
      SizedBox(
        height: 4.h,
      ),
      Text(
        "${autoPartsModel.name}",
        style: GoogleFonts.roboto(
          fontSize: 14.sp,

        )
      ),
    ],
  );
}
