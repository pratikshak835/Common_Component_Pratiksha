import 'package:flutter/material.dart';

class CustomInkwell extends StatelessWidget {
  final Widget child;
  final Function onTap;
  final bool disableCursor;
  const CustomInkwell(
      {Key? key,
      required this.child,
      required this.onTap,
      this.disableCursor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor:
          disableCursor ? SystemMouseCursors.basic : SystemMouseCursors.click,
      child: GestureDetector(onTap: () => onTap(), child: child),
    );
  }
}
