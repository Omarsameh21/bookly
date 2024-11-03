import 'package:flutter/material.dart';

class CostumBotton extends StatelessWidget {
  CostumBotton({
    super.key,
    required this.title,
    this.onPressed,
    required this.color,
    this.topLeft = 0,
    this.topRight = 0,
    this.bottomLeft = 0,
    this.bottomRight = 0,
    required this.textStyle,
  });

  final String title;
  final Function()? onPressed;
  final Color color;
  double? topLeft;
  double? topRight;
  double? bottomLeft;
  double? bottomRight;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft!),
            topRight: Radius.circular(topRight!),
            bottomLeft: Radius.circular(bottomLeft!),
            bottomRight: Radius.circular(bottomRight!),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(title, style: textStyle),
    );
  }
}
