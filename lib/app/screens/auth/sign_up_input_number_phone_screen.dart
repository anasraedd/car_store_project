import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpInputNumberPhoneScreen extends StatefulWidget {
  @override
  State<SignUpInputNumberPhoneScreen> createState() => _SignUpInputNumberPhoneScreenState();
}

class _SignUpInputNumberPhoneScreenState extends State<SignUpInputNumberPhoneScreen> {
  TextEditingController numberPhoneEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: Colors.grey.shade500,
          ),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),

      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics( decelerationRate: ScrollDecelerationRate.fast,),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 47.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Container(
                height: 56.h,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.circular(10.r),
                  border: Border(
                      bottom: BorderSide(
                    color: Color(0xFFD1D1D6),
                  )),
                  color: Colors.white,
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.grey[300]!,
                  //       blurRadius: 19,
                  //       offset: const Offset(0, 4)),
                  // ]
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          '+970',
                          style: GoogleFonts.roboto(
                              fontSize: 18.sp, color: Colors.black),
                        ),
                        SizedBox(
                          width: 9.5.w,
                        ),
                        SvgPicture.asset(
                          'assets/icons/arrow_down.svg',
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        SizedBox(
                            height: 16.h,
                            child: VerticalDivider(
                              width: 1,
                            )),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                    Expanded(
                      child: CustomTextField(
                        hint: 'Number Phone',
                        keyboardType: TextInputType.number,
                        context: context,
                        controller: numberPhoneEditingController,
                        suffix:   GestureDetector(
                          onTap: (){
                            numberPhoneEditingController.clear();
                          },
                          child: SvgPicture.asset(
                            'assets/icons/circle_close.svg',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(
              height: 62.h,
            ),
            Padding(
              padding:  EdgeInsetsDirectional.only(start: 30.w),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/check_select.svg'),
                  SizedBox(
                    width: 6.w,
                  ),
      RichText(
        text: TextSpan(
          text: 'Agree to our ',
          style: TextStyle(
              color: primaryColorDisable,
              fontSize: 12.sp,
          ),
          children: [

                TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // setState(() {
                      //   expanded = true;
                      // });
                    },
                ),
              TextSpan(
                text: ' and ',
                style: TextStyle(
                    color: primaryColorDisable,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp),

              ),
              TextSpan(
                text: 'Data Policy',
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // setState(() {
                    //   expanded = true;
                    // });
                  },
              ),
              ]
        )
      ),

                ],
              ),
            ),
            SizedBox(height: 75.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.w),
              child: SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(

                  onPressed: (){
                    Get.offAllNamed('sign_up_input_data_screen');

                  //  Navigator.pushNamed(context, '/verrification_screen');
                  }, child: Text('Continue'), style: ElevatedButton.styleFrom(backgroundColor: primaryColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.r))) ),),
              ),
            ),

            SizedBox(height: 189.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  width: 31.w,
                  child: Divider(
                    color:  secondaryColor,
                    thickness: 1.6.h,
                    height: 2,
                  ),

                ),
                SizedBox(
                  width: 4.5.w,
                ),
                Center(
                  child: Text(
                    'Login with',
                    style: GoogleFonts.inter(
                      color: Colors.black38,
                    ),
                  ),
                ),
                SizedBox(
                  width: 4.5.w,
                ),
                SizedBox(
                  width: 31.w,
                  child: Divider(
                    color:  secondaryColor,
                    thickness: 1.6.h,
                    height: 2,

                  ),

                ),

              ],
            ),
            SizedBox(height: 29.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/icon-facebook.svg'),
                SizedBox(width: 30.w,),
                SvgPicture.asset('assets/icons/icon-google.svg'),
                SizedBox(width: 30.w,),
                SvgPicture.asset('assets/icons/icon-twitter.svg')

              ],
            ),

            SizedBox(
              height: 86.h,
            )




          ],
        ),
      ),
    );
  }
}
