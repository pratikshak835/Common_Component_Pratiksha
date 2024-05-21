import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/common/styles/font_family.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  const AppTextStyle._();

  static final TextStyle semiBoldStyle = _textStyle.copyWith(
      fontSize: Dimens.size16,
      fontWeight: FontWeight.w600,
      fontFamily: FontFamily.JioTypeBold);

  static final TextStyle boldStyle = _textStyle.copyWith(
    fontSize: Dimens.size22,
    fontWeight: FontWeight.w700,
  );

  static TextStyle regularStyle = _textStyle.copyWith(
      fontSize: Dimens.size14,
      fontWeight: FontWeight.w500,
      color: AppColors.black.withOpacity(0.65));

  static TextStyle lightStyle = _textStyle.copyWith(
    fontSize: Dimens.size16,
    fontWeight: FontWeight.w300,
    color: AppColors.FF707070,
  );

  static final TextStyle buttonTextStyle = _textStyle.copyWith(
    fontSize: Dimens.size16,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _textStyle = TextStyle(
    color: Colors.black,
    fontSize: Dimens.size14,
  );

  static const TextStyle hintTextStyle = TextStyle(
    color: Colors.black26,
    fontSize: Dimens.size14,
  );

  static const TextStyle hintFocusTextStyle = TextStyle(
    color: AppColors.FF1E7B74,
    fontSize: Dimens.size14,
  );
}
