import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/app_images.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/calendar/calendar_widgets.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingleDatePicker extends StatelessWidget {
  final Function onDatesSelect;
  String displayedString;
  final Function clearDatesCallback;
  final bool showClearIcon;
  final bool enabled;
  final DateTime? startDate;
  final Color displayedStringColor;

  SingleDatePicker(
      {Key? key,
      required this.onDatesSelect,
      required this.displayedString,
      this.showClearIcon = false,
      required this.clearDatesCallback,
      this.enabled = true,
      this.startDate,
      this.displayedStringColor = AppColors.dropdownUnderlineColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: PopupMenuButton(
        enabled: enabled,
        tooltip: "",
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        itemBuilder: (ctx) {
          return [
            PopupMenuItem(
                padding: EdgeInsets.zero,
                enabled: false,
                child: DateRangeWidget(
                    startDate: startDate,
                    onDone: (val1, val2) {
                      Navigator.of(context).pop();
                      onDatesSelect(val1, val2);
                    }))
          ];
        },
        child: OnHover(builder: (isHovered) {
          final bool showClear = isHovered && showClearIcon;
          return Container(
              decoration: BoxDecoration(
                  //    borderRadius: BorderRadius.circular(8),

                  border: Border(
                      bottom: BorderSide(
                          color: enabled
                              ? AppColors.dropdownUnderlineColor
                              : AppColors.FFB5B5B5,
                          width: 2.0))),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 0.0),
                      child: CustomText(
                        fontWeight: CustomFontWeight.regular,
                        text: displayedString,
                        size: Dimens.size16,
                        color:
                            enabled ? displayedStringColor : AppColors.FFB5B5B5,
                      ),
                    ),
                  ),
                  if (showClear && enabled)
                    CustomInkwell(
                        onTap: clearDatesCallback,
                        child: const Icon(
                          Icons.close,
                          size: 20.0,
                        ))
                  else
                    SvgPicture.asset(
                      AppImages.icCalNew,
                      color: enabled
                          ? AppColors.dropdownUnderlineColor
                          : AppColors.FFB5B5B5,
                    ),
                  const SizedBox(width: 8.0)
                ],
              ));
        }),
      ),
    );
  }
}
