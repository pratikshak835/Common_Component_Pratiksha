import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/button/button_widget.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final double contentPadding;
  final double radius;
  final String title;
  final Widget body;
  final String btn1Text;
  final String btn2Text;
  final String btn3Text;
  final Function()? onBtn1Tap;
  final Function()? onBtn2Tap;
  final Function()? onBtn3Tap;
  final Function() onClose;
  final Color titleColor;
  final Color btn1Color;
  final Color btn2Color;
  final Color btn3Color;
  final Color btn1BorderColor;
  final Color btn2BorderColor;
  final Color btn3BorderColor;
  final Color? btn1TextColor;
  final Color? btn2TextColor;
  final Color? btn3TextColor;
  final bool showBtn1;
  final bool showBtn2;
  final bool showBtn3;
  final AlignmentGeometry? alignment;
  final double? height;
  final double? width;
  final bool dismissOnOutsideClick;

  const CustomDialog({
    Key? key,
    this.contentPadding = 32,
    required this.radius,
    required this.title,
    required this.body,
    this.btn1Text = "Click 1",
    this.btn2Text = "Click 2",
    this.btn3Text = "Click 3",
    this.onBtn1Tap,
    this.onBtn2Tap,
    this.onBtn3Tap,
    required this.onClose,
    this.titleColor = AppColors.FF141414,
    this.btn1Color = AppColors.kPrimaryColor,
    this.btn2Color = AppColors.kPrimaryColor,
    this.btn3Color = AppColors.kPrimaryColor,
    this.showBtn1 = true,
    this.showBtn2 = false,
    this.showBtn3 = false,
    this.alignment = Alignment.center,
    this.height,
    this.width = 600,
    this.dismissOnOutsideClick = false,
    this.btn1BorderColor = AppColors.kPrimaryColor,
    this.btn2BorderColor = AppColors.dropdownUnderlineColor,
    this.btn3BorderColor = AppColors.kPrimaryColor,
    this.btn1TextColor = AppColors.white,
    this.btn2TextColor = AppColors.kPrimaryColor,
    this.btn3TextColor = AppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return dismissOnOutsideClick;
      },
      child: AlertDialog(
        alignment: alignment,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        contentPadding: EdgeInsets.all(contentPadding),
        content: SizedBox(
          width: width,
          height: height,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Material(
                      color: AppColors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            onTap: onClose,
                            child: const SizedBox(
                              height: 16.0,
                              width: 16.0,
                              child: Center(
                                child: Icon(
                                  Icons.close_rounded,
                                  color: AppColors.kPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomText(
                      text: title,
                      color: titleColor,
                      fontWeight: CustomFontWeight.black,
                      size: 24,
                    ),
                    body,
                  ],
                ),
                if (showBtn1 || showBtn2 || showBtn3)
                  Material(
                    color: AppColors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (showBtn1)
                          CustomButton(
                            onClick: onBtn1Tap != null ? onBtn1Tap! : () {},
                            buttonText: btn1Text,
                            buttonColor: btn1Color,
                            buttonBorderColor: btn1BorderColor,
                            buttonTextColor: btn1TextColor,
                          ),
                        if (showBtn2) const SizedBox(width: 12),
                        if (showBtn2)
                          CustomButton(
                            onClick: onBtn2Tap != null ? onBtn2Tap! : () {},
                            buttonText: btn2Text,
                            buttonColor: Colors.white,
                            buttonBorderColor: btn2BorderColor,
                            buttonTextColor: btn2TextColor,
                          ),
                        if (showBtn3) const SizedBox(width: 12),
                        if (showBtn3)
                          CustomButton(
                            onClick: onBtn3Tap != null ? onBtn3Tap! : () {},
                            buttonText: btn3Text,
                            buttonColor: btn3Color,
                            buttonBorderColor: btn3BorderColor,
                            buttonTextColor: btn3TextColor,
                          ),
                      ],
                    ),
                  ),
              ]),
        ),
      ),
    );
  }
}
