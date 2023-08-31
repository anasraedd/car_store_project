import 'package:eccomerce_app/widgets/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ReviewsTab extends StatelessWidget {
  // const ReviewsTab({Key? key}) : super(key: key);
  late ScrollController scrollController;


  ReviewsTab({required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 30.h),
      child: ListView.builder(

        controller: scrollController,
          itemCount: 8,

          itemBuilder: (context, index){
            return ReviewWidget();

      }),
    );
  }
}
