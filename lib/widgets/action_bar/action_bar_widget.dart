import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/action_bar/action_bar_item.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  final VoidCallback onCloseCallback;
  final double selectedItemCount;
  final String title;
  final Color? itemCountColor;
  final Color? itemCountBackgroundColor;
  final List<ActionBarButton> buttonList;

  const ActionBar({
    Key? key,
    required this.onCloseCallback,
    this.selectedItemCount = 0,
    required this.title,
    this.itemCountColor = AppColors.white,
    this.itemCountBackgroundColor = AppColors.kPrimaryColor,
    required this.buttonList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.size64,
      margin: const EdgeInsets.only(bottom: 20),
      alignment: Alignment.center,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          height: Dimens.size64,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: Dimens.size70,
                decoration: BoxDecoration(
                  color: itemCountBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      topLeft: Radius.circular(8)),
                ),
                alignment: Alignment.center,
                child: CustomText(
                  text: selectedItemCount.toString(),
                  color: itemCountColor,
                  size: Dimens.size24,
                  fontWeight: CustomFontWeight.black,
                ),
              ),
              const SizedBox(
                width: Dimens.size16,
              ),
              CustomText(
                text: title,
                size: Dimens.size18,
                color: AppColors.A6000000,
                fontWeight: CustomFontWeight.medium,
              ),
              const SizedBox(
                width: Dimens.size48,
              ),
              for (ActionBarButton button in buttonList) button,
              CustomInkwell(
                onTap: onCloseCallback ?? () {},
                child: Container(
                  height: 64,
                  width: 64,
                  alignment: Alignment.center,
                  child: Container(
                    height: 24.0,
                    width: 24.0,
                    decoration: const BoxDecoration(
                      color: AppColors.FFF5F5F5,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
