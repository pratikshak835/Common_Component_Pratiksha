import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:common_jds_flutter/widgets/tooltip/tooltip_widget.dart';
import 'package:flutter/material.dart';

class CustomButtonWithDropdown extends StatelessWidget {
  final Function onTap1;
  final Widget secondChild;
  final String label;
  final Widget? icon;
  final double? height;
  final EdgeInsets? padding;
  final Color? color;
  final Widget? hoveredIcon;
  final Color? hoverColor;
  final Color? secondaryChildHoverColor;
  final Color? secondChildColor;
  final Color? hoverTextColor;
  final String? tooltipMessage;
  final bool showToolTip;
  const CustomButtonWithDropdown({
    Key? key,
    required this.onTap1,
    required this.secondChild,
    required this.label,
    this.height = 45,
    this.padding =
    const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 16.0, right: 16.0),
    this.icon,
    this.color = AppColors.kPrimaryColor,
    this.hoveredIcon,
    this.hoverColor,
    this.secondaryChildHoverColor,
    this.secondChildColor = AppColors.kPrimaryColor,
    this.hoverTextColor,
    this.tooltipMessage,
    this.showToolTip = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectionContainer.disabled(
      child: Row(
        children: [
          CustomTooltipWidget(
            width: 300,
            customTooltipAlignment: CustomTooltipAlignment.Bottom,
            text: tooltipMessage ?? "",
            showTooltip: showToolTip,
            child: CustomInkwell(
              onTap: onTap1,
              child: OnHover(
                builder: (isHovered) {
                  return Container(
                      height: height,
                      padding: padding,
                      decoration: BoxDecoration(
                          color: isHovered ? hoverColor ?? color : color,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(1000),
                              bottomLeft: Radius.circular(1000))),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        if (icon != null)
                          isHovered ? hoveredIcon ?? icon! : icon!,
                        if (icon != null) const SizedBox(width: 8.0),
                        CustomText(
                          fontWeight: CustomFontWeight.bold,
                          size: 16.0,
                          text: label,
                          color: isHovered
                              ? hoverTextColor ?? AppColors.white
                              : AppColors.white,
                        )
                      ]));
                },
              ),
            ),
          ),
          const SizedBox(width: 1.0),
          OnHover(
            builder: (isHovered) {
              return Container(
                decoration: BoxDecoration(
                    color: isHovered
                        ? secondaryChildHoverColor ??
                        hoverColor ??
                        secondChildColor ??
                        color
                        : secondChildColor ?? color,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(1000),
                        bottomRight: Radius.circular(1000))),
                child: secondChild,
              );
            },
          )
        ],
      ),
    );
  }
}