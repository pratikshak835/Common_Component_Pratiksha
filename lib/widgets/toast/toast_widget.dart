import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class ToastMsgWidget extends StatelessWidget {
  final String? message;
  final String? btnLabel;
  final Function? onBtnTap;
  final Function? onCloseTap;
  Function? onActionTap;
  String? actionLabel;
  final Color color;
  final EdgeInsets? margin;

  ToastMsgWidget({
    Key? key,
    this.message,
    this.btnLabel,
    this.onCloseTap,
    this.onBtnTap,
    this.color = AppColors.errorColor,
    this.margin,
  }) : super(key: key);

  ToastMsgWidget.action({
    Key? key,
    this.message,
    this.btnLabel,
    this.onCloseTap,
    this.onBtnTap,
    required this.onActionTap,
    this.actionLabel,
    this.color = AppColors.errorColor,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(24.0),
      child: Container(
        margin: margin,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: AppColors.A6000000),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 16,
                ),
                color == AppColors.errorColor
                    ? const CircleAvatar(
                        radius: 13.0,
                        backgroundColor: AppColors.errorColor,
                        child: Center(
                            child: Icon(
                          Icons.close_outlined,
                          size: 17.0,
                          color: Colors.white,
                        )),
                      )
                    : const CircleAvatar(
                        radius: 13.0,
                        backgroundColor: AppColors.FF25AB21,
                        child: Center(
                            child: Icon(
                          Icons.done,
                          size: 17.0,
                          color: Colors.white,
                        )),
                      ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: CustomText(
                    maxLines: 4,
                    text: message,
                    color: AppColors.white,
                    fontWeight: CustomFontWeight.bold,
                  ),
                ),
                CustomInkwell(
                    onTap: () => onCloseTap!(),
                    child: const Center(
                      child: Icon(
                        Icons.close_rounded,
                        color: AppColors.white,
                      ),
                    )),
                const SizedBox(
                  width: 20.0,
                ),
              ],
            ),
            if (actionLabel != null)
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 32,
                  child: ElevatedButton(
                      onPressed: () {
                        onActionTap?.call();
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.resolveWith((_) =>
                            const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: const BorderSide(
                                        color: AppColors.FFB5B5B5))),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                        shadowColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                      ),
                      child: CustomText(
                        text: actionLabel,
                        fontWeight: CustomFontWeight.bold,
                        size: 16,
                        lineHeightToFontSizeRatio: 24 / 16,
                        color: AppColors.white,
                      )),
                ),
              ),
            const SizedBox(
              width: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

void showCustomSnackbar({
  required BuildContext context,
  required String message,
  required Color backgroundColor,
  final EdgeInsets? margin,
  final Function? onBtnTap,
  final Function? onCloseTap,
}) {
  bool isMobile = MediaQuery.of(context).size.width < 850;
  bool isTablet = MediaQuery.of(context).size.width < 1100 ||
      MediaQuery.of(context).size.width >= 850;
  bool isDesktop = MediaQuery.of(context).size.width >= 1100;

  double snackBarWidth;
  if (isDesktop) {
    snackBarWidth = MediaQuery.of(context).size.width / 2;
  } else if (isTablet) {
    snackBarWidth = MediaQuery.of(context).size.width / 2;
  } else {
    snackBarWidth = MediaQuery.of(context).size.width;
  }
  final snackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    width: snackBarWidth,
    content: ToastMsgWidget(
      btnLabel: "",
      message: message,
      onCloseTap: null,
      onBtnTap: null,
      color: backgroundColor,
      margin: const EdgeInsets.only(right: 800),
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
