import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class OverlayDrawer extends StatelessWidget {
  final Widget body;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? overlayColor;
  final IconData? closeIcon;
  final double? closeIconSize;
  final Color? closeIconColor;
  final Function() onCloseIconTap;
  final BorderRadiusGeometry? borderRadius;
  final String title;
  final Widget? footer;
  final Color? footerBackgroundColor;
  final EdgeInsetsGeometry footerPadding;

  const OverlayDrawer({
    Key? key,
    required this.body,
    this.left,
    this.right,
    this.top,
    this.bottom,
    this.height = 300,
    this.width = 300,
    this.backgroundColor,
    this.overlayColor,
    this.closeIcon = Icons.close,
    this.closeIconSize = 24,
    this.closeIconColor = AppColors.kPrimaryColor,
    required this.onCloseIconTap,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(20),
      bottomLeft: Radius.circular(20),
    ),
    this.title = "",
    this.footer,
    this.footerBackgroundColor = AppColors.FF404040,
    this.footerPadding =
        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: backgroundColor ?? Colors.black45.withOpacity(0.5),
              ),
            ),
            Positioned(
              left: left,
              right: right,
              top: top,
              bottom: bottom,
              height: height,
              width: width,
              child: Container(
                decoration: BoxDecoration(
                  color: overlayColor ?? AppColors.white,
                  borderRadius: borderRadius,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 32.0, bottom: 16.0, top: 16.0, right: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: title,
                            size: 24,
                            color: AppColors.FF141414,
                            fontWeight: CustomFontWeight.black,
                            lineHeightToFontSizeRatio: 28 / 24,
                          ),
                          InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            onTap: onCloseIconTap,
                            child: Center(
                              child: Icon(
                                closeIcon,
                                color: closeIconColor,
                                size: closeIconSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    body,
                    if (footer != null)
                      Container(
                        color: footerBackgroundColor,
                        child: Padding(
                          padding: footerPadding,
                          child: footer,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
