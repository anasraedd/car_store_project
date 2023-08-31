import 'package:eccomerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomRatingBar extends StatefulWidget {
  final int maxRating;
  final int initialRating;
  final Function(int) onRatingChanged;
  final IconData filledIcon;
  final IconData emptyIcon;
  final Color filledColor;
  final Color emptyColor;

  CustomRatingBar({
    this.maxRating = 5,
    this.initialRating = 0,
    required this.onRatingChanged,
    this.filledIcon = Icons.star,
    this.emptyIcon = Icons.star_border,
    this.filledColor = primaryColor,
    this.emptyColor = Colors.grey,
  });

  @override
  _CustomRatingBarState createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  int _currentRating = 0;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.maxRating, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _currentRating = index + 1;
              widget.onRatingChanged(_currentRating);
            });
          },
          child: Icon(
            index < _currentRating ? widget.filledIcon : widget.emptyIcon,
            color: index < _currentRating
                ? widget.filledColor
                : widget.emptyColor,
          ),
        );
      }),
    );
  }
}
