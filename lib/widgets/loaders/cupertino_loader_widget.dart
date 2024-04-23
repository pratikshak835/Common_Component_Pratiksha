import 'package:flutter/cupertino.dart';

class CupertinoLoader extends StatelessWidget {
  final double radius;
  final Color? color;
  final bool animating;
  const CupertinoLoader(
      {Key? key, this.radius = 20, this.color, this.animating = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(
      radius: radius,
      color: color,
      animating: animating,
    );
  }
}
