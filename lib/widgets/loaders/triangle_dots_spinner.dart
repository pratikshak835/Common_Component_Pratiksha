import 'dart:math' as math;

import 'package:flutter/material.dart';

class TriangleDotSpinner extends StatefulWidget {
  final int duration;
  final int rotationSpeed;
  final double beginSize;
  final double endSize;
  const TriangleDotSpinner(
      {super.key,
      this.duration = 3,
      this.rotationSpeed = 3,
      this.beginSize = 0.8,
      this.endSize = 1.5});

  @override
  _TriangleDotSpinnerState createState() => _TriangleDotSpinnerState();
}

class _TriangleDotSpinnerState extends State<TriangleDotSpinner>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: widget.duration),
      vsync: this,
    )..repeat();

    _rotationAnimation = Tween<double>(
      begin: 0,
      end: widget.rotationSpeed * math.pi,
    ).animate(_controller);

    _sizeAnimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween(begin: widget.beginSize, end: widget.endSize),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween(begin: widget.endSize, end: widget.beginSize),
        weight: 50,
      ),
    ]).animate(_controller);

    _colorAnimation = TweenSequence<Color?>(
      [
        TweenSequenceItem(
          tween: ColorTween(begin: Colors.blue, end: Colors.green),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: ColorTween(begin: Colors.green, end: Colors.yellow),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: ColorTween(begin: Colors.yellow, end: Colors.red),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: ColorTween(begin: Colors.red, end: Colors.blue),
          weight: 1,
        ),
      ],
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _rotationAnimation.value,
          child: CustomPaint(
            painter: _TriangleDotPainter(
                size: _sizeAnimation.value, color: _colorAnimation.value),
            child: SizedBox(
              width: 100,
              height: 100,
            ),
          ),
        );
      },
    );
  }
}

class _TriangleDotPainter extends CustomPainter {
  final double size;
  final Color? color;

  _TriangleDotPainter({required this.size, this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = color ?? Colors.blue;
    var center = Offset(size.width / 2, size.height / 2);
    var length = size.width * 0.3;

    var p1 = Offset(center.dx, center.dy - length / math.sqrt(3));
    var p2 =
        Offset(center.dx - length / 2, center.dy + length / (2 * math.sqrt(3)));
    var p3 =
        Offset(center.dx + length / 2, center.dy + length / (2 * math.sqrt(3)));

    canvas.drawCircle(p1, 5.0 * this.size, paint);
    canvas.drawCircle(p2, 5.0 * this.size, paint);
    canvas.drawCircle(p3, 5.0 * this.size, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
