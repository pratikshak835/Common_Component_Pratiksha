import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';

class CircleAvatarText extends StatelessWidget {
  const CircleAvatarText(
      {Key? key,
      this.imageUrl,
      this.text,
      this.radius = 30,
      this.fontSize = 14.0,
      this.backgroundColor = AppColors.FFE5F1F7,
      this.textColor = AppColors.FF0A5274,
      this.isFocused = false,
      this.hoveredBackgroundColor = AppColors.FF67C3EF,
      this.hoveredTextColor= AppColors.FF00364F,
      this.isDisable = false,
      this.focusedBorderColor = AppColors.black,
      this.focusedBorderWidth = 3.0,
      })
      : super(key: key);

  final String? imageUrl;
  final String? text;
  final double? radius;
  final Color? backgroundColor;
  final Color? hoveredBackgroundColor;
  final Color? textColor;
  final Color? hoveredTextColor;
  final double fontSize;
  final bool? isFocused;
  final bool? isDisable;
  final Color? focusedBorderColor;
  final double? focusedBorderWidth;

  // Change NetworkImage to common ImageView(ToDo)

  @override
  Widget build(BuildContext context) {
    return SelectionContainer.disabled(
      child: OnHover(
        builder: (bool isHovered) {
          return  Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: isFocused == true ? Border.all(
                color: focusedBorderColor ?? AppColors.black,
                width: focusedBorderWidth ?? 3.0,
              ) : null,
            ),
            child: getCircleAvatar(isHovered),
          );
        },
      ),
    );
  }

  getCircleAvatar(isHovered){
    isHovered = isDisable==true ? false : isHovered;
    CircleAvatar circleAvatar = CircleAvatar(
      radius: radius,
      foregroundImage: imageUrl == null ? null : NetworkImage(imageUrl!),
      backgroundColor: isHovered ? hoveredBackgroundColor : backgroundColor,
      child: (text != null)
          ? Center(
        child: CustomText(
          text: text!,
          color: isHovered ? hoveredTextColor : textColor,
          fontWeight: CustomFontWeight.bold,
          size: fontSize,
        ),
      )
          : null,
    );
    if (isDisable == true){
      return Opacity(opacity: 0.2,
        child: circleAvatar,
      );
    }
    if(isHovered && imageUrl != null){
      return Opacity(opacity: 0.5,
        child: circleAvatar,
      );
    }
    return circleAvatar;
  }
}
