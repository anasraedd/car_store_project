import 'package:eccomerce_app/get/static_actions_for_multi_screen_getx_controller.dart';
import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:eccomerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpInputDataScreen extends StatelessWidget {
  SignUpInputDataScreen({Key? key}) : super(key: key);
  TextEditingController fullNameEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController confirmPasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60.h,
              ),
              Text(
                'Full name',
                style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    color: primaryColorDisable),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomTextField(
                  hint: 'Enter your full Name',
                  keyboardType: TextInputType.text,
                  context: context,
                  controller: emailEditingController,
              suffix: GestureDetector(
                              onTap: (){
                                emailEditingController.clear();
                              },
                              child: SvgPicture.asset(
                                'assets/icons/circle_close.svg',
                                height: 24,
                                width: 24,
                              ),
                            ),
                typeInputBorder: TypeInputBorder.UnderlineInputBorderBottom,
              ),
              SizedBox(height: 30.h,),

              Text(
                'E-mail',
                style: GoogleFonts.roboto(
                    fontSize: 14.sp,
                    color: primaryColorDisable),
              ),
              SizedBox(
                height: 5.h,
              ),


              CustomTextField(
                hint: 'Enter your Email',
                keyboardType: TextInputType.text,
                context: context,
                controller: fullNameEditingController,
                suffix: GestureDetector(
                  onTap: (){
                    fullNameEditingController.clear();
                  },
                  child: SvgPicture.asset(
                    'assets/icons/circle_close.svg',
                    height: 24,
                    width: 24,
                  ),
                ),
                typeInputBorder: TypeInputBorder.UnderlineInputBorderBottom,
              ),
              SizedBox(height: 20.h,),
              Text(
                'Don\'t miss our latest promotions and updates',
                style: GoogleFonts.roboto(
                    fontSize: 14.sp,

                    color: primaryColorDisable),
              ),

              SizedBox(height: 30.h,),

          Text(
            'password',
            style: GoogleFonts.roboto(
                fontSize: 14.sp,

                color: primaryColorDisable),
          ),
          SizedBox(
            height: 5.h,
          ),

          GetX<StaticActionsForMultiScreenGetxVontroller>(
              init: StaticActionsForMultiScreenGetxVontroller(),

              builder: (StaticActionsForMultiScreenGetxVontroller controller) {
             return  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 CustomTextField(
                      hint: 'Enter password',
                      keyboardType: TextInputType.visiblePassword,
                      context: context,
                      controller: passwordEditingController,
                      obscureText:  controller.isShowPassword.value,
                      suffix: GestureDetector(
                        onTap: () {
                          controller.isShowPassword.value = !controller.isShowPassword.value;
                        },
                        child: !controller.isShowPassword.value ? SvgPicture.asset(
                          'assets/icons/hide.svg',
                          height: 20,
                          width: 20,
                          color: primaryColorDisable,

                        ) : Icon(Icons.remove_red_eye_sharp, size: 24, color: primaryColorDisable,),
                      ),
                    ),
                SizedBox(height: 30.h,),
                 Text(
                   'password',

                   style: GoogleFonts.roboto(

                       fontSize: 14.sp,

                       color: primaryColorDisable),
                   textAlign: TextAlign.start,
                 ),
                 SizedBox(
                   height: 5.h,
                 ),

                CustomTextField(
                hint: 'Enter password',
                keyboardType: TextInputType.visiblePassword,
                context: context,
                controller: confirmPasswordEditingController,
                obscureText:  controller.isShowPassword.value,
                suffix: GestureDetector(
                onTap: () {
                controller.isShowPassword.value = !controller.isShowPassword.value;
                },
                child: !controller.isShowPassword.value ? SvgPicture.asset(
                'assets/icons/hide.svg',
                height: 20,
                width: 20,
                color: primaryColorDisable,

                ) : Icon(Icons.remove_red_eye_sharp, size: 24, color: primaryColorDisable,),
                ),
                )
               ],
             );
              }
          ),

              SizedBox(height: 70.h,),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(

                  onPressed: (){

                    Navigator.pushNamed(context, '/verrification_screen');
                  }, child: Text('Continue'), style: ElevatedButton.styleFrom(backgroundColor: primaryColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.r))) ),),
              ),





            ],
          ),
        ),
      ),
    );

    // SizedBox(height: 40.h,),
    // Container(
    // margin: EdgeInsets.only(top: 35.h, bottom: 30.h, ),
    // child: Pinput(
    //
    // focusedPinTheme: PinTheme(
    // width: 50.w,
    // height: 50.w,
    // textStyle: TextStyle(fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.w600),
    // decoration: BoxDecoration(
    // borderRadius: BorderRadius.circular(13.r),
    // color: scaffoldBackGround
    // ),
    // ),
    // defaultPinTheme: PinTheme(
    // width: 50.w,
    // height: 50.w,
    // textStyle: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w600),
    // decoration: BoxDecoration(
    // borderRadius: BorderRadius.circular(13.r),
    // color: primaryColor
    // ),
    // ),
    // submittedPinTheme: PinTheme(
    // width: 50.w,
    // height: 50.w,
    // textStyle: TextStyle(fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.w600),
    // decoration: BoxDecoration(
    // borderRadius: BorderRadius.circular(13.r),
    // color: scaffoldBackGround
    // ),
    // ),
    // validator: (s) {
    // return s == '2222' ? null : '';
    // },
    // pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
    // showCursor: true,
    // onCompleted: (pin) => print(pin),
    // ),
    // ),
    //
    // SizedBox(height: 70.h,),
    // Padding(
    // padding: EdgeInsets.symmetric(horizontal: 30.w),
    // child: SizedBox(
    // width: double.infinity,
    // height: 50.h,
    // child: ElevatedButton(
    //
    // onPressed: (){
    //
    // Navigator.pushNamed(context, '/verrification_screen');
    // }, child: Text('Continue'), style: ElevatedButton.styleFrom(backgroundColor: primaryColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25.r))) ),),
    // ),
    // ),
    // SizedBox(height: 30.h),
    //
    // TextButton(onPressed: (){}, child: Text('Resend in 54 Sec', style: GoogleFonts.roboto(color: primaryColor, fontSize:14.sp, ),))

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
    // // )
    // ],
    // )
    // ,
    // )
    // ,
    // );
  }
}
