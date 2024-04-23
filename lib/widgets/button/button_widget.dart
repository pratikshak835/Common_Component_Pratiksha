import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onClick;
  final String buttonText;
  final Widget? icon;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final Color buttonBorderColor;
  final double? height;
  final EdgeInsetsGeometry padding;
  final bool disableCursor;
  final List<BoxShadow>? boxShadow;
  final double borderRadius;
  final bool isBorder;

  const CustomButton({
    Key? key,
    required this.onClick,
    required this.buttonText,
    this.buttonColor = AppColors.FFF5F5F5,
    this.buttonTextColor = AppColors.kPrimaryColor,
    this.buttonBorderColor = AppColors.FFE0E0E0,
    this.icon,
    this.height = 45,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.disableCursor = false,
    this.boxShadow,
    this.borderRadius = 1000,
    this.isBorder = true,
  }) : super(key: key);

  const CustomButton.primary({Key? key,
    required this.onClick,
    required this.buttonText,
    this.icon,
    this.buttonColor = AppColors.kPrimaryColor,
    this.height = 45,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.buttonTextColor = Colors.white,
    this.buttonBorderColor = AppColors.FFE0E0E0,
    this.disableCursor = false,
    this.boxShadow,
    this.borderRadius = 1000,
    this.isBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool needIcon = icon != null;
    return SelectionContainer.disabled(
      child: CustomInkwell(
        onTap: () => onClick(),
        disableCursor: disableCursor,
        child: Container(
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: isBorder ? Border.all(color: buttonBorderColor, width: 1.0) : null,
            boxShadow: boxShadow,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (needIcon) icon!,
              if (needIcon) const SizedBox(width: 8.0),
              Flexible(
                child: CustomText(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  size: 16.0,
                  text: buttonText,
                  color: buttonTextColor,
                  fontWeight: CustomFontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
