import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/styles/app_border_style.dart';
import 'package:common_jds_flutter/common/util/debouncer.dart';
import 'package:common_jds_flutter/widgets/checkbox/checkbox_widget.dart';
import 'package:common_jds_flutter/widgets/chip_widget/chip_widget.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:common_jds_flutter/widgets/text_field/textfield_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MultiSelectSearchDropdown extends StatefulWidget {
  const MultiSelectSearchDropdown(
      {Key? key,
      required this.searchController,
      required this.items,
      required this.selectedItemsList,
      required this.onRemoveCallback,
      required this.onAddCallback,
      this.dropdownLabel,
      this.hint = "Select",
      this.hoverColor = AppColors.FFF5F5F5,
      this.iconColor = Colors.black,
      this.selectedItemColor = Colors.black,
      this.dropdownLabelColor = Colors.black,
      this.hoverTextColor = AppColors.kPrimaryColor,
      this.borderColor = AppColors.black,
      this.onSearchQueryChanged,
      this.labelFontSize = 16.0,
      this.labelTextColor = AppColors.FF404040,
      this.height = 48.0,
      this.maxDropdownHeight = 300.0,
      this.hintColor = AppColors.FFB5B5B5,
      this.hintWeight = CustomFontWeight.regular,
      this.borderRadius = 8.0,
      this.hintSize = 16.0,
      this.onMenuStateChanged,
      this.onClear,
      this.menuItemTextPadding =
          const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
      this.itemHeight,
      this.readOnly = false})
      : super(key: key);

  final List<DropdownItem> items;
  final TextEditingController searchController;
  final Function onRemoveCallback;
  final Function onAddCallback;
  final Color? hoverColor;
  final Color? iconColor;
  final Color? selectedItemColor;
  final Color? dropdownLabelColor;
  final Color? hoverTextColor;
  final String? dropdownLabel;
  final String hint;
  final List<DropdownItem> selectedItemsList;
  final ValueChanged<String>? onSearchQueryChanged;
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
  final Function? onClear;
  final EdgeInsets? menuItemTextPadding;
  final double? itemHeight;
  final bool readOnly;

  @override
  State<StatefulWidget> createState() {
    return _MultiSelectSearchDropdownState();
  }
}

class _MultiSelectSearchDropdownState extends State<MultiSelectSearchDropdown> {
  final deBouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
        ignoring: widget.readOnly == true,
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
                                      : widget.iconColor,
                                ),
                              ],
                            )),
                      ],
                    )),
                dropdownStyleData: DropdownStyleData(
                    padding: EdgeInsets.zero,
                    scrollPadding: EdgeInsets.zero,
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
                onMenuStateChange: (val) =>
                    widget.onMenuStateChanged?.call(val),
                isDense: true,
                isExpanded: true,
                menuItemStyleData: const MenuItemStyleData(
                  height: 300,
                ),
                underline: null,
                hint: CustomText(
                  text: widget.hint,
                  color: widget.hintColor,
                  fontWeight: widget.hintWeight,
                  size: widget.hintSize,
                ),
                value: null,
                items: [
                  DropdownMenuItem(
                      enabled: false,
                      child: StatefulBuilder(builder: (context, menuSetState) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomUnderlineTextFieldWithLabel(
                              enabled: true,
                              showHint: true,
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 15),
                              border:
                                  AppBorderStyle.underLineInputBorder.copyWith(
                                borderSide:
                                    const BorderSide(color: AppColors.FFE0E0E0),
                              ),
                              focussedBorder:
                                  AppBorderStyle.underLineInputBorder.copyWith(
                                borderSide:
                                    const BorderSide(color: AppColors.FFE0E0E0),
                              ),
                              prefixIconPadding:
                                  const EdgeInsets.only(left: 16, right: 8),
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 18,
                                color: AppColors.FFB5B5B5,
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: InkWell(
                                  onTap: () {
                                    widget.searchController.clear();
                                    widget.onClear?.call();
                                    menuSetState(() {});
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    size: 20,
                                    color: AppColors.FFB5B5B5,
                                  ),
                                ),
                              ),
                              rightWidgetToLabel: null,
                              showLabel: false,
                              validator: null,
                              controller: widget.searchController,
                              hintText: "Search",
                              fillColor: AppColors.white,
                              onChanged: (v) {
                                widget.onSearchQueryChanged?.call(v!);
                                deBouncer.run(() {
                                  menuSetState(() {});
                                });
                              },
                            ),
                            (widget.items.isNotEmpty)
                                ? Expanded(
                                    child: ListView.builder(
                                      // shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        final item = widget.items[index];
                                        return OnHover(builder: (isHovered) {
                                          return Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 6.0, vertical: 5.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                              color: isHovered
                                                  ? widget.hoverColor
                                                  : AppColors.white,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0,
                                                horizontal: 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SizedBox(
                                                  height: 15.0,
                                                  width: 15.0,
                                                  child: CustomCheckbox(
                                                      value: widget
                                                          .selectedItemsList
                                                          .contains(item),
                                                      onChanged:
                                                          (bool? addVal) {
                                                        if (addVal == true) {
                                                          if (!widget
                                                              .selectedItemsList
                                                              .contains(item)) {
                                                            widget
                                                                .selectedItemsList
                                                                .add(item);
                                                          }
                                                        } else {
                                                          widget
                                                              .selectedItemsList
                                                              .remove(item);
                                                        }
                                                        setState(() {});
                                                        menuSetState(() {});
                                                      }),
                                                ),
                                                const SizedBox(width: 8.0),
                                                item.prefixIcon ??
                                                    const SizedBox.shrink(),
                                                item.prefixIcon != null
                                                    ? const SizedBox(
                                                        width: 5,
                                                      )
                                                    : const SizedBox.shrink(),
                                                InkWell(
                                                  onTap: () {
                                                    if (!widget
                                                        .selectedItemsList
                                                        .contains(item)) {
                                                      widget.selectedItemsList
                                                          .add(item);
                                                    } else {
                                                      widget.selectedItemsList
                                                          .remove(item);
                                                    }
                                                    setState(() {});
                                                    menuSetState(() {});
                                                  },
                                                  child: CustomText(
                                                    fontWeight: CustomFontWeight
                                                        .regular,
                                                    color: isHovered
                                                        ? widget.hoverTextColor
                                                        : AppColors.black,
                                                    text: widget.items[index]
                                                            .description ??
                                                        "",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        });
                                      },
                                      itemCount: widget.items.length,
                                    ),
                                  )
                                : const Expanded(
                                    child: Center(
                                      child: CustomText(
                                        fontWeight: CustomFontWeight.regular,
                                        color: AppColors.black,
                                        text: "No Data Found",
                                      ),
                                    ),
                                  )
                          ],
                        );
                      }))
                ],
                onChanged: (value) {
                  // widget.onItemSelected!(value!);
                }),
          ],
        ),
      ),
    );
  }
}
