import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/extensions/border_radius_extension.dart';

class AppBorderStyle {
  const AppBorderStyle._();

  static final InputBorder editTextBorder = UnderlineInputBorder(
      borderRadius: 0.borderRadius,
      borderSide: BorderSide(color: AppColors.black.withOpacity(0.65)));
  static final InputBorder editTextBorderEnabled = UnderlineInputBorder(
      borderRadius: 0.borderRadius,
      borderSide: BorderSide(color: AppColors.black.withOpacity(0.65)));

  static final InputBorder editTextBorderFP = UnderlineInputBorder(
      borderRadius: 0.borderRadius,
      borderSide: const BorderSide(color: AppColors.white));
  static const InputBorder underLineInputBorder = UnderlineInputBorder(
      borderSide:
      BorderSide(color: AppColors.A6000000, width: 2.0));
  static const InputBorder disableUnderLineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.FFB5B5B5, width: 2.0));
  static const InputBorder underLineInputTransparentBorder =
  UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent, width: 2.0));
  static final InputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: 8.borderRadius,
      borderSide: const BorderSide(color: AppColors.FFCFD3DF));
  static final InputBorder outlineInputBorderV2 = OutlineInputBorder(
      borderRadius: 12.borderRadius,
      borderSide: const BorderSide(color: AppColors.FFE0E0E0));
  static const InputBorder underLineInputDisabledBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.textDisabledColor, width: 2.0));
  static const InputBorder errorUnderLineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.errorColor, width: 2.0));
}