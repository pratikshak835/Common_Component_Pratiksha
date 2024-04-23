import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/loaders/cupertino_loader_widget.dart';
import 'package:flutter/material.dart';

class OverlayLoadingSpinner extends StatelessWidget {
  final double height;
  final double width;
  final double opacity;
  final Color color;
  final double radius;
  final Color? spinnerColor;
  final bool animating;
  const OverlayLoadingSpinner(
      {super.key,
      this.height = 100.0,
      this.width = 100.0,
      this.opacity = 0.2,
      this.color = AppColors.black,
      this.radius = 20,
      this.spinnerColor,
      this.animating = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
      child: CupertinoLoader(
        radius: 20,
        color: spinnerColor,
        animating: animating,
      ),
    );
  }
}
