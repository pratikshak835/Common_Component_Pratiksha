import 'package:flutter/material.dart';

extension BorderRadiusExt on num {
  BorderRadius get borderRadius => BorderRadius.circular(toDouble());

  InputBorder outlineInputBorder({
    BorderSide borderSide = BorderSide.none,
  }) => OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: borderSide,
      );

  BorderSide borderSide({
    Color? color,
    double? width,
    BorderStyle? style,
  }) =>
      BorderSide(
        color: color ?? Colors.white,
        width: toDouble(),
        style: style ?? BorderStyle.solid,
      );
}