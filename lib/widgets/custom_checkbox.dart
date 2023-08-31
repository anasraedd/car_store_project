import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckbox extends StatefulWidget {
  late  bool value;
  final ValueChanged<bool> onChanged;

  final Color activeColor;
  final Color inactiveColor;

  CustomCheckbox({
    required this.value,
    required this.onChanged,
    this.activeColor = Colors.blue,
    this.inactiveColor = scaffoldBackGround,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        setState(() {
          widget.onChanged(!widget.value);
          // widget.value = !widget.value;

        });
      },
      child: Container(
        width: 15.0,
        height: 15.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          // shape: BoxShape.circle,
          color: widget.value ? widget.activeColor : widget.inactiveColor,
          border: widget.value
              ? Border.all(color: widget.activeColor)
              : Border.all(color: Colors.grey),
        ),
        child: widget.value
            ? Icon(
                Icons.check,
                color: Colors.white,
                size: 12.0,
              )
            : null,
      ),
    );
  }
}
