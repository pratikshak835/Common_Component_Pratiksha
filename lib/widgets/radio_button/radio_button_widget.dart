import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final bool? isDisabled;
  final double size;

  const CustomRadioButton(
      {Key? key,
      required this.isSelected,
      required this.onTap,
      this.isDisabled,
      this.size = 24.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInkwell(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: isDisabled != null && isDisabled == true
                    ? AppColors.textDisabledColor
                    : isSelected
                        ? AppColors.kPrimaryColor
                        : AppColors.A6000000,
                width: isSelected ? size / 4 : 1.0)),
      ),
    );
  }
}
