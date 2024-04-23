import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomChipWidget extends StatelessWidget {
  final String textForDisplay;
  final double radius;
  final Function onRemoveIconTap;
  final bool showRemoveIcon;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? textColor;
  final BoxConstraints? constraints;
  final bool disable;
  final Color? disableTextColor;
  final Color? disableBackgroundColor;
  final Color? removeIconColor;
  final Color? disableRemoveIconColor;

  const CustomChipWidget(
      {required this.textForDisplay,
      required this.onRemoveIconTap,
      Key? key,
      this.radius = 4.0,
      this.textColor = AppColors.FF46070B,
      this.backgroundColor = AppColors.FFFEF2E9,
      this.margin = const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 8.0),
      this.padding = const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
      this.constraints = const BoxConstraints(maxWidth: 130.0),
      this.showRemoveIcon = true,
      this.disableBackgroundColor = AppColors.FFF5F5F6,
      this.disableTextColor = AppColors.FFA1A1A1,
      this.disable = false,
      this.removeIconColor = AppColors.FF909090,
      this.disableRemoveIconColor = AppColors.FFA1A1A1,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      constraints: constraints,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: disable ? disableBackgroundColor : backgroundColor,
      ),
      margin: margin,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: CustomText(
              fontWeight: CustomFontWeight.medium,
              color: disable ? disableTextColor : textColor ?? AppColors.FF46070B,
              text: textForDisplay,
              size: 14.0,
            ),
          ),
          if (showRemoveIcon) const SizedBox(width: 4.0),
          if (showRemoveIcon)
            CustomInkwell(
              onTap: () {
                if(disable) return;
                onRemoveIconTap();
              },
              child: Icon(
                Icons.clear,
                size: 16.0,
                color: disable ? disableRemoveIconColor : removeIconColor,
              ),
            ),
        ],
      ),
    );
  }
}
