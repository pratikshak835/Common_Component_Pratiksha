import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/app_icons.dart';
import 'package:common_jds_flutter/common/constants.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaginationWidget extends StatelessWidget {
  final Function onLeftPressed;
  final Function onJumpToFirstLeftPressed;
  final Function onJumpToLastRightPressed;
  final Function onRightPressed;
  final String currentPageNo;
  final String totalPages;

  const PaginationWidget({
    Key? key,
    required this.onLeftPressed,
    required this.onRightPressed,
    required this.onJumpToFirstLeftPressed,
    required this.onJumpToLastRightPressed,
    required this.currentPageNo,
    required this.totalPages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomInkwell(
          onTap: () => onJumpToFirstLeftPressed(),
          child: SvgPicture.asset(
            AppIcons.fastBackwardArrow,
            package: Constants.packageName,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        CustomInkwell(
          onTap: () => onLeftPressed(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.kPrimaryColor,
            size: 14.0,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        CustomText(
          text: '$currentPageNo/$totalPages',
          color: AppColors.FF404040,
          fontWeight: CustomFontWeight.regular,
          size: 14.0,
        ),
        const SizedBox(
          width: 25,
        ),
        CustomInkwell(
          onTap: () => onRightPressed(),
          child: const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.kPrimaryColor,
            size: 14.0,
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        CustomInkwell(
          onTap: () => onJumpToLastRightPressed(),
          child: SvgPicture.asset(
            AppIcons.fastForwardArrow,
            package: Constants.packageName,
          ),
        ),
      ],
    );
  }
}
