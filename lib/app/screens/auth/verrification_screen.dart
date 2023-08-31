import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class VerrificationScreen extends StatelessWidget {
  const VerrificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
           // leading: GestureDetector(
           //     onTap: (){
           //       Navigator.pop(context);
           //     },
           //     child: Icon(Icons.arrow_back_outlined,
           // )),
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.white,

            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),

        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h,),
              Text('Verrification', style: GoogleFonts.roboto(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black
              ),),
              SizedBox(height: 12.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 80.w),
                child: Text('we texted you a code to verify your phone number.',
                  style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),

                textAlign: TextAlign.center,),
              ),
              SizedBox(height: 40.h,),
              Container(
                margin: EdgeInsets.only(top: 35.h, bottom: 30.h, ),
                child: Pinput(

                  focusedPinTheme: PinTheme(
                    width: 50.w,
                    height: 50.w,
                    textStyle: TextStyle(fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.r),
                        color: scaffoldBackGround
                    ),
                  ),
                  defaultPinTheme: PinTheme(
                    width: 50.w,
                    height: 50.w,
                    textStyle: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.r),
                        color: primaryColor
                    ),
                  ),
                  submittedPinTheme: PinTheme(
                    width: 50.w,
                    height: 50.w,
                    textStyle: TextStyle(fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.r),
                        color: scaffoldBackGround
                    ),
                  ),
                  validator: (s) {
                    return s == '2222' ? null : '';
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ),

              SizedBox(height: 70.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.w),
                child: SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child: ElevatedButton(

                    onPressed: (){

                      Navigator.pushNamed(context, '/verrification_screen');
                    }, child: Text('Continue'), style: ElevatedButton.styleFrom(backgroundColor: primaryColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.r))) ),),
                ),
              ),
              SizedBox(height: 30.h),

              TextButton(onPressed: (){}, child: Text('Resend in 54 Sec', style: GoogleFonts.roboto(color: primaryColor, fontSize:14.sp, ),))


              // Row(
              //   mainAxisSize: MainAxisSize.max,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     SizedBox(
              //       height: 57.w,
              //       width: 57.w,
              //       child: TextFormField(
              //
              //         decoration: InputDecoration(
              //           fillColor: scaffoldBackGround,
              //           filled: true,
              //           border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(10.r),
              //               borderSide: const BorderSide(color: scaffoldBackGround)),
              //           focusedBorder: OutlineInputBorder(
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //             borderRadius: BorderRadius.circular(10.r),
              //           ),
              //           disabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           focusedErrorBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           errorBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: Colors.transparent),
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 29.w,),
              //     SizedBox(
              //       height: 57.w,
              //       width: 57.w,
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //           fillColor: scaffoldBackGround,
              //           filled: true,
              //           border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(10.r),
              //               borderSide: const BorderSide(color: scaffoldBackGround)),
              //           focusedBorder: OutlineInputBorder(
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //             borderRadius: BorderRadius.circular(10.r),
              //           ),
              //           disabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           focusedErrorBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           errorBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: Colors.transparent),
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 29.w,),
              //     SizedBox(
              //       height: 57.w,
              //       width: 57.w,
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //           fillColor: scaffoldBackGround,
              //           filled: true,
              //           border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(10.r),
              //               borderSide: const BorderSide(color: scaffoldBackGround)),
              //           focusedBorder: OutlineInputBorder(
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //             borderRadius: BorderRadius.circular(10.r),
              //           ),
              //           disabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           focusedErrorBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           errorBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: Colors.transparent),
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 29.w,),
              //     SizedBox(
              //       height: 57.w,
              //       width: 57.w,
              //       child: TextFormField(
              //         decoration: InputDecoration(
              //           fillColor: scaffoldBackGround,
              //           filled: true,
              //           border: OutlineInputBorder(
              //               borderRadius: BorderRadius.circular(10.r),
              //               borderSide: const BorderSide(color: scaffoldBackGround)),
              //           focusedBorder: OutlineInputBorder(
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //             borderRadius: BorderRadius.circular(10.r),
              //           ),
              //           disabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           focusedErrorBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: scaffoldBackGround),
              //           ),
              //           errorBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10.r),
              //             borderSide: const BorderSide(color: Colors.transparent),
              //           ),
              //         ),
              //       ),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      );
  }
}
