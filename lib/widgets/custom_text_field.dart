import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

enum TypeInputBorder { rounded, UnderlineInputBorderBottom, none }

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextInputType keyboardType;
  final BuildContext context;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool obscureText;
  final Widget? suffix;
  final bool readOnly;
  final TypeInputBorder typeInputBorder;
  void Function(String value)? onChanged;
  void Function(String value)? onSubmitted;

  CustomTextField(
      {required this.hint,
      required this.keyboardType,
      required this.context,
      required this.controller,
      this.focusNode,
        this.readOnly = false,
      this.autofocus = false,
      this.obscureText = false,
      this.suffix,
      this.typeInputBorder = TypeInputBorder.none,
      this.onChanged,
      this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      controller: controller,
      focusNode: focusNode,
      autofocus: autofocus,
      keyboardType: keyboardType,
      obscureText: obscureText,
      readOnly: readOnly,
      onSubmitted: (String value){
        onSubmitted!(value);
      },

      onChanged: (String value){
        onChanged!(value);
      },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            GoogleFonts.roboto(fontSize: 14.sp, color: Color(0xFFD1D1D6)),

        suffix: suffix,


        enabledBorder:
            typeInputBorder == TypeInputBorder.UnderlineInputBorderBottom
                ? UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFD1D1D6), width: 1))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0)),
        focusedBorder:
            typeInputBorder == TypeInputBorder.UnderlineInputBorderBottom
                ? UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFD1D1D6), width: 1))
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0)),
      ),
      // Container(
      //   height: 10,
      //   width: 10,
      //   color: Colors.grey.shade200,
      //   child: Icon(Icons.close),
      // )
    );
  }
}
