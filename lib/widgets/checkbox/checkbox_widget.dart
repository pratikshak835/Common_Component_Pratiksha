import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/app_icons.dart';
import 'package:common_jds_flutter/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckbox extends StatefulWidget {
  final Function(bool) onChanged;
  bool value;
  bool enabled;
  bool readOnly;
  CustomCheckbox({
    Key? key,
    required this.onChanged,
    required this.value,
    this.enabled = true,
    this.readOnly = false,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyCheckboxState();
  }
}

class _MyCheckboxState extends State<CustomCheckbox> {
  @override
  void didUpdateWidget(covariant CustomCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.readOnly,
      child: InkWell(
        onTap: widget.readOnly
            ? () {}
            : () {
                if (widget.enabled) {
                  setState(() {
                    widget.value = !widget.value;
                  });
                  widget.onChanged(widget.value);
                }
              },
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              color: widget.value
                  ? widget.readOnly || widget.enabled == false
                      ? AppColors.kPrimaryColor.withOpacity(0.50)
                      : AppColors.kPrimaryColor
                  : (widget.readOnly || widget.enabled == false)
                      ? AppColors.FFF5F5F5
                      : Colors.transparent,
              border: Border.all(
                  color: widget.value
                      ? (widget.readOnly || widget.enabled == false)
                          ? AppColors.kPrimaryColor.withOpacity(0.10)
                          : AppColors.kPrimaryColor
                      : (widget.readOnly || widget.enabled == false)
                          ? Colors.grey.withOpacity(0.80)
                          : AppColors.A6000000,
                  width: 1),
              borderRadius: BorderRadius.circular(4.0)),
          child: widget.value
              ? SvgPicture.asset(
                  AppIcons.icCheckIcon,
                  package: Constants.packageName,
                  colorFilter:
                      const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                )
              : null,
        ),
      ),
    );
  }
}
