import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatefulWidget {
  final double strokeWidth;
  final Color color;
  final Color? secondaryColor; // Additional color for animation
  final int duration;

  const CustomCircularProgressIndicator({
    Key? key,
    this.strokeWidth = 4.0,
    this.color = Colors.blue,
    this.secondaryColor,
    this.duration = 1, // Initialize secondaryColor
  }) : super(key: key);

  @override
  _CustomCircularProgressIndicatorState createState() =>
      _CustomCircularProgressIndicatorState();
}

class _CustomCircularProgressIndicatorState
    extends State<CustomCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.duration),
    )..repeat(); // Repeat the animation indefinitely

    _colorAnimation = TweenSequence<Color?>(
      <TweenSequenceItem<Color?>>[
        TweenSequenceItem(
          tween: ColorTween(
              begin: widget.color,
              end: widget.secondaryColor ??
                  widget.color), // Animate from primary to secondary color
          weight: 1,
        ),
        TweenSequenceItem(
          tween: ColorTween(
              begin: widget.secondaryColor ?? widget.color,
              end: widget.color), // Animate from secondary to primary color
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
      builder: (BuildContext context, Widget? child) {
        return CircularProgressIndicator(
          strokeWidth: widget.strokeWidth,
          value: _controller.value,
          valueColor: AlwaysStoppedAnimation<Color?>(_colorAnimation.value),
          backgroundColor: widget.color.withOpacity(0.1),
        );
      },
    );
  }
}
