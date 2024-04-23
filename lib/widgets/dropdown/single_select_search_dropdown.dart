import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/styles/app_border_style.dart';
import 'package:common_jds_flutter/common/util/debouncer.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:common_jds_flutter/widgets/text_field/textfield_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SingleSelectSearchDropdown extends StatefulWidget {
  const SingleSelectSearchDropdown(
      {Key? key,
      required this.searchController,
      required this.items,
      this.dropdownLabel,
      this.hint = "Select",
      this.selectedItem,
      // this.backgroundColor = const Color(0xFF67C0B9),
      this.hoverColor = AppColors.FFF5F5F5,
      this.iconColor = Colors.black,
      this.selectedItemColor = Colors.black,
      this.dropdownLabelColor = Colors.black,
      this.hoverTextColor = AppColors.kPrimaryColor,
      this.onItemSelected,
      this.onSearchQueryChanged,
      this.borderColor = Colors.black,
      this.maxDropdownHeight = 300.0,
      this.hintColor = AppColors.FFB5B5B5,
      this.hintWeight = CustomFontWeight.regular,
      this.borderRadius = 10.0,
      this.hintSize = 16.0,
      this.onMenuStateChanged,
      this.onClear,
      this.menuItemTextPadding =
          const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      this.itemHeight,
      this.readOnly = false})
      : super(key: key);

  final List<DropdownItem> items;
  final TextEditingController searchController;
  // final Color? backgroundColor;
  final Color? hoverColor;
  final Color? iconColor;
  final Color? selectedItemColor;
  final Color? dropdownLabelColor;
  final Color? hoverTextColor;
  final String? dropdownLabel;
  final String hint;
  final DropdownItem? selectedItem;
  final ValueChanged<DropdownItem>? onItemSelected;
  final ValueChanged<String>? onSearchQueryChanged;
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
  final bool? readOnly;

  @override
  State<StatefulWidget> createState() {
    return _SingleSelectSearchDropdownState();
  }
}

class _SingleSelectSearchDropdownState
    extends State<SingleSelectSearchDropdown> {
  final deBouncer = Debouncer(milliseconds: 500);

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
                                : widget.dropdownLabelColor,
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
                    padding: EdgeInsets.zero,
                    scrollPadding: EdgeInsets.zero,
                    offset: const Offset(0, -5),
                    maxHeight: widget.maxDropdownHeight,
                    elevation: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widget.borderRadius),
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
                                        return InkWell(
                                          onTap: () {
                                            widget.searchController.clear();
                                            Navigator.pop(context);
                                            widget.onItemSelected
                                                ?.call(widget.items[index]);
                                            setState(() {});
                                          },
                                          child: OnHover(builder: (isHovered) {
                                            return Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 6.0,
                                                      vertical: 5.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                color: isHovered
                                                    ? widget.hoverColor
                                                    : AppColors.white,
                                              ),
                                              padding:
                                                  widget.menuItemTextPadding,
                                              child: CustomText(
                                                fontWeight:
                                                    CustomFontWeight.regular,
                                                color: isHovered
                                                    ? widget.hoverTextColor
                                                    : AppColors.black,
                                                text: widget.items[index]
                                                        .description ??
                                                    "",
                                              ),
                                            );
                                          }),
                                        );
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
