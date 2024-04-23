import 'package:flutter/material.dart';

class CustomTooltipWidget extends StatelessWidget {
  CustomTooltipWidget(
      {Key? key,
      required this.child,
      required this.text,
      this.width,
      this.showTooltip = true,
      this.customTooltipAlignment = CustomTooltipAlignment.Top})
      : super(key: key);
  final Widget child;
  final String text;
  final double? width;
  final bool showTooltip;
  final CustomTooltipAlignment customTooltipAlignment;

  OverlayEntry? entry;

  final layerLink = LayerLink();

  bool isHoverOnToolTip = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (PointerEvent details) {
        if (entry == null) {
          showTooltipOverlay(context);
        }
      },
      onExit: (hover) async {
        await Future.delayed(const Duration(milliseconds: 10));
        if (isHoverOnToolTip) return;
        entry?.remove();
        entry = null;
      },
      child: CompositedTransformTarget(
        link: layerLink,
        child: child,
      ),
    );
  }

  void showTooltipOverlay(context) {
    final overlay = Overlay.of(context);

    entry = OverlayEntry(
      builder: (context) => Wrap(
        children: [
          CompositedTransformFollower(
              followerAnchor: getFollowerAnchor(),
              targetAnchor: getTargetAnchor(),
              link: layerLink,
              showWhenUnlinked: false,
              child: showTooltip
                  ? buildTooltipOverlay()
                  : const SizedBox.shrink()),
        ],
      ),
    );

    overlay.insert(entry!);
  }

  Widget buildTooltipOverlay() {
    var textContainer = Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
        maxLines: 20,
        overflow: TextOverflow.visible,
      ),
      // child: CustomText(
      //     text: text,
      //     color: AppColors.FFFFFFFF,
      //     fontWeight: CustomFontWeight.medium,
      //     maxLines: 20,
      //     size: 12,
      //     ),
    );
    return getToolTipTriangle(textContainer);
  }

  Widget getLeftTooltip(textContainer) {
    return MouseRegion(
      onEnter: (event) {
        isHoverOnToolTip = true;
      },
      onExit: (event) {
        isHoverOnToolTip = false;
        entry?.remove();
        entry = null;
      },
      child: SizedBox(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            textContainer,
            Transform.rotate(
              angle: 1.55,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  color: Colors.black,
                  height: 14,
                  width: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getRightTooltip(textContainer) {
    return MouseRegion(
      onEnter: (event) {
        isHoverOnToolTip = true;
      },
      onExit: (event) {
        isHoverOnToolTip = false;
        entry?.remove();
        entry = null;
      },
      child: SizedBox(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.rotate(
              alignment: Alignment.center,
              angle: -1.6,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  color: Colors.black,
                  height: 14,
                  width: 13,
                ),
              ),
            ),
            textContainer,
          ],
        ),
      ),
    );
  }

  Widget getBottomTooltip(textContainer) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          child: MouseRegion(
            onEnter: (event) {
              isHoverOnToolTip = true;
            },
            onExit: (event) {
              isHoverOnToolTip = false;
              entry?.remove();
              entry = null;
            },
            child: SizedBox(
              width: width,
              // height: 200,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipPath(
                    clipper: TriangleClipper(),
                    child: Container(
                      color: Colors.black,
                      height: 12,
                      width: 12,
                    ),
                  ),
                  width != null ? textContainer : textContainer,
                ],
              ),
            ),
          ),
        ),
        Positioned(
            child: Container(
          color: Colors.transparent,
          height: 200,
        )
            // child: OnHover(builder: (isHovered) {
            //   if (isHovered) {
            //     isHoverOnToolTip = false;
            //     entry?.remove();
            //     entry = null;
            //   }
            //   return Container(
            //     color: Colors.transparent,
            //     height: 200,
            //   );
            // }),
            )
      ],
    );
  }

  Widget getTopTooltip(textContainer) {
    return MouseRegion(
      onEnter: (event) {
        isHoverOnToolTip = true;
      },
      onExit: (event) {
        isHoverOnToolTip = false;
        entry?.remove();
        entry = null;
      },
      child: SizedBox(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            textContainer,
            Transform.rotate(
              angle: 3.15,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  color: Colors.black,
                  height: 12,
                  width: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getFollowerAnchor() {
    switch (customTooltipAlignment) {
      case CustomTooltipAlignment.Left:
        return Alignment.centerRight;
      case CustomTooltipAlignment.Bottom:
        return Alignment.topCenter;
      case CustomTooltipAlignment.Top:
        return Alignment.bottomCenter;
      case CustomTooltipAlignment.Right:
        return Alignment.bottomLeft;
    }
  }

  getTargetAnchor() {
    switch (customTooltipAlignment) {
      case CustomTooltipAlignment.Left:
        return Alignment.centerLeft;
      case CustomTooltipAlignment.Bottom:
        return Alignment.bottomCenter;
      case CustomTooltipAlignment.Top:
        return Alignment.topCenter;
      case CustomTooltipAlignment.Right:
        return Alignment.bottomRight;
    }
  }

  Widget getToolTipTriangle(Widget textContainer) {
    switch (customTooltipAlignment) {
      case CustomTooltipAlignment.Left:
        return getLeftTooltip(textContainer);
      case CustomTooltipAlignment.Bottom:
        return getBottomTooltip(textContainer);
      case CustomTooltipAlignment.Right:
        return getRightTooltip(textContainer);
      case CustomTooltipAlignment.Top:
        return getTopTooltip(textContainer);
    }
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(
    Size size,
  ) {
    final path = Path();

    // path.cubicTo(0, 0, (size.width / 10) * 2, size.height / 4,
    //     (size.width / 10) * 6, size.height / 3);
    // path.cubicTo((size.width / 10) * 6, size.height / 3, size.width,
    //     size.height / 2, (size.width / 10) * 6, size.height * (2 / 3));
    // path.cubicTo((size.width / 10) * 6, size.height * (2 / 3),
    //     (size.width / 10) * 2, size.height - size.height / 4, 0, size.height);

    // // path.lineTo(size.width, 0.0);
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, 0.0);
    // // path.lineTo(size.width / 2, size.height);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width / -6, size.height);

    // path.moveTo(size.width / 2, 0);
    // path.lineTo(0, size.width);
    // path.lineTo(size.width, size.height);
    // path.close();

    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

enum CustomTooltipAlignment { Left, Bottom, Top, Right }

// class CustomTooltipWidget extends ShapeBorder {
//   final bool isPaddingRequired;
//   const CustomTooltipWidget({this.isPaddingRequired = true});
//
//   @override
//   // TODO: implement dimensions
//   EdgeInsetsGeometry get dimensions =>
//       EdgeInsets.only(bottom: isPaddingRequired ? 20 : 0);
//
//   @override
//   Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();
//
//   @override
//   Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
//     // TODO: implement getOuterPath
//     rect =
//         Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 20));
//
//     return Path()
//       ..addRRect(
//           RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 3)))
//       ..moveTo(rect.bottomLeft.dx + 20, rect.bottomCenter.dy)
//       ..relativeLineTo(10, 10)
//       ..relativeLineTo(10, -10)
//       ..close();
//   }
//
//   @override
//   void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
//     // TODO: implement paint
//   }
//
//   @override
//   ShapeBorder scale(double t) => this;
// }
