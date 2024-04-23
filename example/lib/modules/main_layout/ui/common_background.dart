import 'package:flutter/material.dart';

class CommonBackground extends StatelessWidget {
  const CommonBackground({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return child!;
  }
}