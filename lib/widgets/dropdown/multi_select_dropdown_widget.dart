import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/checkbox/checkbox_widget.dart';
import 'package:common_jds_flutter/widgets/chip_widget/chip_widget.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MultiSelectDropdown extends StatefulWidget {
  MultiSelectDropdown({
    Key? key,
    required this.items,
    this.dropdownLabel,
    this.hint = "Select",
    required this.onRemoveCallback,
    required this.onAddCallback,
    this.hoverColor = AppColors.FFF5F5F5,
    this.iconColor = Colors.black,
    this.selectedItemColor = Colors.black,
    this.dropdownLabelColor = Colors.black,
    this.hoverTextColor = AppColors.kPrimaryColor,
    this.borderColor = AppColors.black,
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
        const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
    this.dropdownPadding,
    this.itemHeight,
    this.readOnly = false,
  }) : super(key: key);

  final List<DropdownItem> items;
  final String? dropdownLabel;
  final Function onRemoveCallback;
  final Function onAddCallback;
  final Color? hoverColor;
  final Color? iconColor;
  final Color? selectedItemColor;
  final Color? dropdownLabelColor;
  final Color? hoverTextColor;
  final String hint;
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
  final bool readOnly;
  final List<DropdownItem> selectedItemsList = List.empty(growable: true);

  @override
  State<StatefulWidget> createState() {
    return _MultiSelectDropdownState();
  }
}

class _MultiSelectDropdownState extends State<MultiSelectDropdown> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: IgnorePointer(
        ignoring: widget.readOnly,
        child: Column(
          children: [
            DropdownButton2<DropdownItem>(
                customButton: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        //  borderRadius: BorderRadius.circular(8),
                        border: Border(
                            bottom: BorderSide(
                                color: widget.readOnly
                                    ? AppColors.textDisabledColor
                                    : widget.borderColor,
                                width: 2.0))),
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
                                : widget.dropdownLabelColor,
                          ),
                        Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10, right: 4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: widget.selectedItemsList.isEmpty
                                        ? Padding(
                                            padding: const EdgeInsets.only(
                                                top: 4.0, left: 0.0),
                                            child: CustomText(
                                              color: widget.readOnly
                                                  ? AppColors.textDisabledColor
                                                  : widget.hintColor,
                                              size: 16.0,
                                              fontWeight:
                                                  CustomFontWeight.regular,
                                              text: widget.hint,
                                            ),
                                          )
                                        : Wrap(
                                            children: [
                                              for (int i = 0;
                                                  i <
                                                      widget.selectedItemsList
                                                          .length;
                                                  i++)
                                                CustomChipWidget(
                                                  textForDisplay: widget
                                                          .selectedItemsList[i]
                                                          .description ??
                                                      "",
                                                  textColor: widget.readOnly
                                                      ? AppColors
                                                          .textDisabledColor
                                                      : null,
                                                  backgroundColor:
                                                      widget.readOnly
                                                          ? AppColors
                                                              .textDisabledColor
                                                          : null,
                                                  onRemoveIconTap: () {
                                                    widget.selectedItemsList
                                                        .removeAt(i);
                                                    setState(() {});
                                                  },
                                                ),
                                            ],
                                          )),
                                Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: widget.readOnly
                                      ? AppColors.textDisabledColor
                                      : AppColors.black,
                                ),
                              ],
                            )),
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
                value: null,
                items: widget.items.map((DropdownItem value) {
                  return DropdownMenuItem<DropdownItem>(
                      value: value,
                      enabled: false,
                      child: StatefulBuilder(builder: (context, menuSetState) {
                        final isSelected =
                            widget.selectedItemsList.contains(value);
                        return OnHover(builder: (isHovered) {
                          return Container(
                            // margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
                            padding: widget.menuItemTextPadding,
                            decoration: BoxDecoration(
                              color: isHovered
                                  ? widget.hoverColor
                                  : AppColors.white,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const SizedBox(width: 4.0),
                                SizedBox(
                                  height: 15.0,
                                  width: 15.0,
                                  child: CustomCheckbox(
                                      value: isSelected,
                                      onChanged: (bool? addVal) {
                                        if (addVal == true) {
                                          if (!widget.selectedItemsList
                                              .contains(value)) {
                                            widget.selectedItemsList.add(value);
                                          }
                                        } else {
                                          widget.selectedItemsList
                                              .remove(value);
                                        }
                                        setState(() {});
                                        menuSetState(() {});
                                      }),
                                ),
                                const SizedBox(width: 8.0),
                                value.prefixIcon ?? const SizedBox.shrink(),
                                value.prefixIcon != null
                                    ? const SizedBox(
                                        width: 5,
                                      )
                                    : const SizedBox.shrink(),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      if (!widget.selectedItemsList
                                          .contains(value)) {
                                        widget.selectedItemsList.add(value);
                                      } else {
                                        widget.selectedItemsList.remove(value);
                                      }
                                      setState(() {});
                                      menuSetState(() {});
                                    },
                                    child: CustomText(
                                      size: 14,
                                      text: value.description,
                                      color: isHovered
                                          ? widget.hoverTextColor
                                          : AppColors.FF404040,
                                      fontWeight: CustomFontWeight.regular,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                      }));
                }).toList(),
                onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
