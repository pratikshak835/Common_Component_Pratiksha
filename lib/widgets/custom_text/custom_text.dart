import 'package:common_jds_flutter/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/styles/font_family.dart';

enum CustomFontWeight {
  thin,
  extraLight,
  light,
  regular,
  medium,
  bold,
  semiBold,
  extraBold,
  black
}

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final CustomFontWeight? fontWeight;
  final TextOverflow? overflow;
  final double? lineHeightToFontSizeRatio;
  final FontStyle? fontStyle;
  final double? letterSpacing;

  const CustomText(
      {Key? key,
      @required this.text,
      this.size,
      this.color,
      this.textAlign,
      this.maxLines,
      this.lineHeightToFontSizeRatio,
      this.fontWeight = CustomFontWeight.regular,
      this.overflow = TextOverflow.ellipsis,
      this.fontStyle,
      this.letterSpacing,
      }):super(key: key);

  const CustomText.headingXl(
      {super.key,
      @required this.text ,
      this.size = 88,
      this.color,
      this.textAlign,
      this.maxLines,
      this.fontWeight = CustomFontWeight.black,
      this.overflow = TextOverflow.ellipsis,
      this.lineHeightToFontSizeRatio = 1,
      this.letterSpacing = -0.3,
      this.fontStyle});

  const CustomText.headingL(
      {super.key,
        @required this.text ,
        this.size = 64,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.black,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.3,
        this.fontStyle});

  const CustomText.headingM(
      {super.key,
        @required this.text ,
        this.size = 40,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.black,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.3,
        this.fontStyle});

  const CustomText.headingS(
      {super.key,
        @required this.text ,
        this.size = 32,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.black,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.3,
        this.fontStyle});

  const CustomText.headingXS(
      {super.key,
        @required this.text,
        this.size = 24,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.black,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.3,
        this.fontStyle});

  const CustomText.bodyL(
      {super.key,
        @required this.text,
        this.size = 24,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.medium,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 24/32,
        this.letterSpacing = -0.5,
        this.fontStyle});

  const CustomText.bodyLBold(
      {super.key,
        @required this.text,
        this.size = 24,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.bold,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 24/32,
        this.letterSpacing = -0.5,
        this.fontStyle});

  const CustomText.bodyS(
      {super.key,
        @required this.text,
        this.size = 16,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.medium,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.5,
        this.fontStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
          height: lineHeightToFontSizeRatio,
          color: color,
          fontSize: size,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          fontFamily: getFontFamily(fontWeight),
          package: Constants.packageName,
          fontWeight: getFontWeight(fontWeight),
          decoration: TextDecoration.none),
    );
  }

  String getFontFamily(CustomFontWeight? fontWeight) {
    if (fontWeight == CustomFontWeight.black
        || fontWeight == CustomFontWeight.extraBold) {
      return FontFamily.JioTypeBlack;
    } else if (fontWeight == CustomFontWeight.bold ||
        fontWeight == CustomFontWeight.semiBold) {
      return FontFamily.JioTypeBold;
    } else if (fontWeight == CustomFontWeight.medium) {
      return FontFamily.JioTypeMedium;
    } else if (fontWeight == CustomFontWeight.extraLight
        || fontWeight == CustomFontWeight.light
        || fontWeight == CustomFontWeight.thin) {
      return FontFamily.JioTypeLight;
    }
    return FontFamily.JioTypeMedium;
  }

  FontWeight getFontWeight(CustomFontWeight? fontWeight) {
    if (fontWeight == CustomFontWeight.thin) {
      return FontWeight.w100;
    } else if (fontWeight == CustomFontWeight.extraLight) {
      return FontWeight.w200;
    } else if (fontWeight == CustomFontWeight.light) {
      return FontWeight.w300;
    } else if (fontWeight == CustomFontWeight.regular) {
      return FontWeight.w400;
    } else if (fontWeight == CustomFontWeight.medium) {
      return FontWeight.w500;
    } else if (fontWeight == CustomFontWeight.semiBold) {
      return FontWeight.w600;
    } else if (fontWeight == CustomFontWeight.bold) {
      return FontWeight.w700;
    } else if (fontWeight == CustomFontWeight.extraBold) {
      return FontWeight.w800;
    } else if (fontWeight == CustomFontWeight.black) {
      return FontWeight.w900;
    }
    return FontWeight.w400;
  }
}
