import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:flutter/material.dart';

class SecondarySwitch extends StatefulWidget {
  final double? trackHeight;
  final double? trackWidth;
  final bool value;
  final Color? activeTrackColor;
  final Color? inActiveTrackColor;
  final Color? activeThumbColor;
  final Color? inActiveThumbColor;
  final Color trackBorderColor;
  final double trackBorderWidth;
  final Function(bool) onClick;

  const SecondarySwitch({
    Key? key,
    this.trackHeight = 25,
    this.trackWidth = 50,
    required this.value,
    this.activeTrackColor = AppColors.kPrimaryColor,
    this.inActiveTrackColor = AppColors.white,
    this.activeThumbColor = AppColors.white,
    this.inActiveThumbColor = AppColors.FF404040,
    this.trackBorderColor = AppColors.black,
    this.trackBorderWidth = 2,
    required this.onClick,
  }) : super(key: key);

  @override
  State<SecondarySwitch> createState() => _SecondarySwitchState();
}

class _SecondarySwitchState extends State<SecondarySwitch> {
  @override
  void initState() {
    super.initState();
    thumbSize = widget.trackHeight! - 8;
    if (widget.value) {
      status = widget.value;
      switchThumbLeft = null;
      switchThumbRight = 4;
      switchThumbTop = 4;
    } else {
      switchThumbLeft = 4;
      switchThumbRight = null;
      switchThumbTop = 4;
    }
  }

  double? switchThumbLeft = 4;
  double? switchThumbRight;
  double? switchThumbTop = 4;
  double? thumbSize;
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered) {
      return CustomInkwell(
        onTap: () {
          if (status == true) {
            switchThumbLeft = 4;
            switchThumbTop = 4;
            switchThumbRight = null;
            status = false;
          } else {
            switchThumbLeft = null;
            switchThumbRight = 4;
            switchThumbTop = 4;
            status = true;
          }
          widget.onClick(status);
          setState(() {});
        },
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              decoration: BoxDecoration(
                color: status
                    ? widget.activeTrackColor
                    : widget.inActiveTrackColor,
                borderRadius: BorderRadius.circular(1000),
                border: status
                    ? null
                    : Border.all(
                        color: widget.trackBorderColor,
                        width: widget.trackBorderWidth,
                      ),
              ),
              height: widget.trackHeight,
              width: widget.trackWidth,
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              height: thumbSize,
              width: thumbSize,
              top: switchThumbTop,
              right: switchThumbRight,
              left: switchThumbLeft,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
                decoration: BoxDecoration(
                    color: status
                        ? widget.activeThumbColor
                        : widget.inActiveThumbColor,
                    shape: BoxShape.circle,
                    boxShadow: isHovered
                        ? [
                            BoxShadow(
                                color: status
                                    ? AppColors.kPrimaryColor.withOpacity(0.5)
                                    : AppColors.black.withOpacity(0.5),
                                spreadRadius: status ? 10 : 1,
                                blurRadius: status ? 5 : 10),
                          ]
                        : null),
              ),
            ),
          ],
        ),
      );
    });
  }
}
