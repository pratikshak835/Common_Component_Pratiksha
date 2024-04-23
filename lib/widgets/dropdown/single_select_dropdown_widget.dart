import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SingleSelectDropdown extends StatefulWidget {
  const SingleSelectDropdown(
      {Key? key,
      required this.items,
      this.dropdownLabel,
      this.hint = "Select",
      this.selectedItem,
      this.hoverColor = AppColors.FFF5F5F5,
      this.iconColor = Colors.black,
      this.selectedItemColor = Colors.black,
      this.dropdownLabelColor = Colors.black,
      this.hoverTextColor = AppColors.kPrimaryColor,
      this.borderColor = AppColors.black,
      this.onChange,
      this.labelFontSize = 16.0,
      this.labelTextColor = AppColors.FF404040,
      this.height = 48.0,
      this.maxDropdownHeight = 300.0,
      this.hintColor = AppColors.FFB5B5B5,
      this.hintWeight = CustomFontWeight.regular,
      this.borderRadius = 8.0,
      this.hintSize = 16.0,
      this.onMenuStateChanged,
      this.menuItemTextPadding =
          const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      this.dropdownPadding,
      this.itemHeight,
      this.readOnly = false})
      : super(key: key);

  final List<DropdownItem> items;
  final Color? hoverColor;
  final Color? iconColor;
  final Color? selectedItemColor;
  final Color? hoverTextColor;
  final Color? dropdownLabelColor;
  final String? dropdownLabel;
  final String hint;
  final DropdownItem? selectedItem;
  final ValueChanged<DropdownItem>? onChange;
  final Color? labelTextColor;
  final double? labelFontSize;
  final double height;
  final Color borderColor;
  final double maxDropdownHeight;
  final double? hintSize;
  final double borderRadius;
  final Color? hintColor;
  final CustomFontWeight? hintWeight;
  final Function? onMenuStateChanged;
  final EdgeInsets? dropdownPadding;
  final EdgeInsets? menuItemTextPadding;
  final double? itemHeight;
  final bool? readOnly;

  @override
  State<StatefulWidget> createState() {
    return _SingleSelectDropdownState();
  }
}

class _SingleSelectDropdownState extends State<SingleSelectDropdown> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isItemSelected = widget.selectedItem != null;
    return Theme(
      data: ThemeData(
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: IgnorePointer(
        ignoring: widget.readOnly == true,
        child: Column(
          children: [
            DropdownButton2<DropdownItem>(
                customButton: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.dropdownLabel != null)
                          CustomText(
                            text: widget.dropdownLabel,
                            size: 14,
                            color: widget.readOnly == true
                                ? AppColors.textDisabledColor
                                : widget.labelTextColor,
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomText(
                                text: isItemSelected
                                    ? widget.selectedItem?.description
                                    : widget.hint,
                                color: widget.readOnly == true
                                    ? AppColors.textDisabledColor
                                    : isItemSelected
                                        ? widget.selectedItemColor
                                        : widget.hintColor,
                                size: 16,
                                fontWeight: CustomFontWeight.regular,
                              ),
                            ),
                            Icon(
                                isItemSelected
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: widget.readOnly == true
                                    ? AppColors.textDisabledColor
                                    : widget.iconColor),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                            width: double.infinity,
                            height: 2.0,
                            color: widget.readOnly == true
                                ? AppColors.textDisabledColor
                                : widget.borderColor),
                      ],
                    )),
                dropdownStyleData: DropdownStyleData(
                    padding: widget.dropdownPadding,
                    offset: const Offset(0, -5),
                    maxHeight: widget.maxDropdownHeight,
                    elevation: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.black.withOpacity(0.10),
                          blurRadius: 15.0,
                        ),
                      ],
                    )),
                onMenuStateChange: (val) => widget.onMenuStateChanged != null
                    ? widget.onMenuStateChanged!(val)
                    : null,
                isDense: true,
                isExpanded: true,
                menuItemStyleData: MenuItemStyleData(
                  padding: widget.dropdownPadding,
                  height: 40,
                ),
                underline: null,
                hint: CustomText(
                  text: widget.hint,
                  color: widget.hintColor,
                  fontWeight: widget.hintWeight,
                  size: widget.hintSize,
                ),
                value: widget.selectedItem,
                items: widget.items.map((DropdownItem value) {
                  return DropdownMenuItem<DropdownItem>(
                    value: value,
                    child: OnHover(
                      builder: (isHovered) => Container(
                        padding: widget.menuItemTextPadding,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color:
                              isHovered ? widget.hoverColor : AppColors.white,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            value.prefixIcon ?? const SizedBox.shrink(),
                            value.prefixIcon != null
                                ? const SizedBox(
                                    width: 5,
                                  )
                                : const SizedBox.shrink(),
                            Flexible(
                              child: CustomText(
                                text: value.description,
                                color: isHovered
                                    ? widget.hoverTextColor
                                    : AppColors.FF404040,
                                size: 14,
                                fontWeight: CustomFontWeight.regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  widget.onChange!(value!);
                }),
          ],
        ),
      ),
    );
  }
}
