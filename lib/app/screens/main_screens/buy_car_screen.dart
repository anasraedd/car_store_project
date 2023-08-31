import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/utils/my_behavior.dart';
import 'package:eccomerce_app/widgets/card_top_deal_widget.dart';
import 'package:eccomerce_app/widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyCarScreen extends StatelessWidget {
  List<Color> colors = [primaryColor, Colors.red, Colors.blue,];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        // SizedBox(
        //   height: 30.h,
        //   child: ListView.builder(
        //
        //       itemBuilder: (context, index){
        //         return ;
        //
        //   }),
        // )
        SizedBox(
          height: 30.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: ListView(
                scrollDirection: Axis.horizontal,
                // child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: CategoryWidget(
                        nameIcon: 'sales_icon', nameCategory: 'Sales'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: CategoryWidget(
                        nameIcon: 'hot_icon', nameCategory: 'Hot'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: CategoryWidget(
                        nameIcon: 'featured_icon', nameCategory: 'Featured'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: CategoryWidget(
                        nameIcon: 'discount_icon', nameCategory: 'Discount'),
                  ),
                ],
                // ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding:  EdgeInsets.all(20),
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.w,
                    crossAxisSpacing: 20.w,
                    mainAxisExtent: 225.h),
                // physics: NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CardTopDealWidget(
                    idCar: 1,
                    isFavorite: false,
                    urlImage:
                        "https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/car2.png?alt=media&token=a7d7dff0-4a10-46d2-b55b-15b32a3f41db",
                    title: 'Lamborghini',
                    price: 67.600,
                    colors: colors,
                    isOffer: true,
                    description: 'Audi/2.0-liter four-cylinder',
                  );
                },
                itemCount: 6,
              ),
            ),
          ),
        )
      ],
    );
  }
}
