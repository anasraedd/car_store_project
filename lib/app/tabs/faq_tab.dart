import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/custom_primary_button.dart';
import 'package:eccomerce_app/widgets/qa_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class FaqTab extends StatelessWidget {
late List<int> faqs;
ScrollController scrollController;
FaqTab({required this.faqs, required this.scrollController});

@override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      controller: scrollController,

      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: scaffoldBackGround,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 20.w, end: 15.w),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/qa.svg',
                      width: 45,
                      height: 34,
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Have any question?",
                            style: GoogleFonts.roboto(
                              fontSize: 14.sp,

                            )
                          ),
                          SizedBox(height: 3.h),
                          Text("Click the button ",
                              style: GoogleFonts.roboto(
                                fontSize: 12.sp,
color: primaryColorDisable
                              )),
                        ],
                      ),
                    ),
                    // SizedBox(width: 44.w),
                    CustomPrimaryButton(
                      size: 12.sp,
                      text: 'Ask Now',
                      onTap: () => {},
                      width: 70,
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index){
return QAItemCard();
            },
            itemCount: faqs.length,),


            SizedBox(
              width: double.infinity,
              height: 44.h,
              child: ElevatedButton(onPressed: (){}, child: Text('Get Offers from Dealer', style: GoogleFonts.roboto(
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
      ),
    );
  }
}
