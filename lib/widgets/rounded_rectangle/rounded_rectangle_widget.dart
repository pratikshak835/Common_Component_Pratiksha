import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:flutter/material.dart';

class RoundedRectangleWidget extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final Function()? onTap;
  final double radius;
  final Color color;
  final Color borderColor;
  final double borderWidth;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const RoundedRectangleWidget(
      {super.key,
      required this.child,
      this.width = 50,
      this.height = 50,
      this.onTap,
      this.radius = 8.0,
      this.color = AppColors.white,
      this.borderColor = AppColors.FFE0E0E0,
      this.borderWidth = 1.0,
      this.padding,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: borderColor, width: borderWidth)),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}
