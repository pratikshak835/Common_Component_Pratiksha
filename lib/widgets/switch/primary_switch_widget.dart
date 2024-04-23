import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:flutter/material.dart';

class PrimarySwitch extends StatefulWidget {
  final bool? value;
  final Color activeThumbColor;
  final Color inactiveThumbColor;
  final MaterialStateProperty<Color?> trackColor;
  final Function(bool) onChanged;

  const PrimarySwitch({
    Key? key,
    required this.value,
    required this.onChanged,
    this.activeThumbColor = AppColors.kPrimaryColor,
    this.inactiveThumbColor = AppColors.FF404040,
    this.trackColor = const MaterialStatePropertyAll(Colors.grey),
  }) : super(key: key);

  @override
  State<PrimarySwitch> createState() => _PrimarySwitchState();
}

class _PrimarySwitchState extends State<PrimarySwitch> {
  bool status = false;

  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      status = widget.value!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: status,
      onChanged: (val) {
        setState(() {
          status = val;
        });
        widget.onChanged(val);
      },
      activeColor: widget.activeThumbColor,
      inactiveThumbColor: widget.inactiveThumbColor,
      trackColor: widget.trackColor,
    );
  }
}
