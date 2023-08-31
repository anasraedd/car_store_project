
import 'package:eccomerce_app/models/car_price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CarGetxController extends GetxController{
  double rotationX = 0.0;
  double rotationY = 0.0;
  List<int> myColors =
      [0Xfff00AC5E, 0XfffF6C604, 0XfffFF3131, 0Xfff424243, 0Xfff006DEA].obs;
  int colorSelected = 0;
  RxList<CarPrice> cars = <CarPrice>[
    CarPrice(name: 'Mercedes SLC', description: '', price: '\$42,70-\$48,70', image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310', checkToCompare: false),
    CarPrice(name: 'Polestar 1', description: '', price: '\$42,70-\$48,70', image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310', checkToCompare: false),
    CarPrice(name: 'Continental', description: '', price: '\$42,70-\$48,70', image: 'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310', checkToCompare: true),
    CarPrice(name: 'Lexus LC', description: '', price: '\$42,70-\$48,70', image:'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car.png?alt=media&token=8b755885-2675-404b-9551-fc2cdabe7310', checkToCompare: false)
  ].obs;

  void changeValueOfTransform(rotationX, rotationY) {
    this.rotationX += rotationX;
    this.rotationY -= rotationY;
    update();
  }

  void changeColorSelected(int index){
    this.colorSelected = index;
    update();
  }

  void changeListCar(int index){
    this.cars[index].checkToCompare = !this.cars[index].checkToCompare;
    update();

  }


  // Widget bulidItems(context, index) => Stack(
  //   alignment: Alignment.center,
  //   children: [
  //     GestureDetector(
  //         onTap: () {
  //           // changeValueOfIndex(index);
  //         },
  //         child: CircleAvatar(
  //           radius: 10.h,
  //           backgroundColor: Color(myColors[index]),
  //         )),
  //     this.index == index
  //         ? CircleAvatar(
  //       radius: 15.h,
  //       backgroundColor: Color(myColors[index]).withOpacity(0.55),
  //     )
  //         : Container(),
  //   ],
  // );

}