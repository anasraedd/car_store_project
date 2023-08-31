import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  late int color;
  late bool selected;


  ColorWidget({required this.color,  required this.selected });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(2),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: !selected ? Colors.transparent: Color(color).withOpacity(0.40),
        // border: selected ? Border.all(color: Color(color).withOpacity(0.55), width: selected ? 4 : 0) : null
      ),
      child: Container(
    margin: EdgeInsetsDirectional.all(5),
    height: 15,
    width: 15,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Color(color),
    // border: selected ? Border.all(color: Color(color).withOpacity(0.55), width: selected ? 4 : 0) : null
    ),)
    );
  }
}
