import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:flutter/material.dart';

class ActionBarButton extends StatelessWidget {
  const ActionBarButton({
    Key? key,
    required this.icon,
    this.iconColor = AppColors.A6000000,
    required this.title,
    required this.onTap,
    this.iconHeight = 24,
    this.iconWidth = 24,
    this.titleColor = AppColors.A6000000,
  }) : super(key: key);

  final Widget icon;
  final Color iconColor;
  final String title;
  final Function onTap;
  final double? iconHeight;
  final double? iconWidth;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OnHover(
          builder: (isHovered) {
            return CustomInkwell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: isHovered ? AppColors.FFF5F5F5 : AppColors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        icon,
                        const SizedBox(
                          height: 4,
                        ),
                        CustomText(
                          text: title,
                          size: Dimens.size14,
                          fontWeight: CustomFontWeight.medium,
                          lineHeightToFontSizeRatio: 16 / 14,
                          color: titleColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(
          width: Dimens.size16,
        ),
      ],
    );
  }
}
