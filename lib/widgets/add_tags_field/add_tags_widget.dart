import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/custom_inkwell.dart';
import 'package:common_jds_flutter/common/styles/app_border_style.dart';
import 'package:common_jds_flutter/common/util/debouncer.dart';
import 'package:common_jds_flutter/widgets/chip_widget/chip_widget.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/text_field/textfield_widget.dart';
import 'package:flutter/material.dart';

class AddTagsField extends StatelessWidget {
  final Function onAdd;
  final Function onRemove;
  final List<String> selectedStringsList;
  final String? hintText;
  final bool enabled;
  final Color borderColor;
  final Color disableBorderColor;
  final Color dropdownIconColor;
  final Color disableDropdownIconColor;

  const AddTagsField({
    Key? key,
    required this.onAdd,
    required this.selectedStringsList,
    this.hintText,
    required this.onRemove,
    this.enabled = true,
    this.borderColor = AppColors.A6000000,
    this.disableBorderColor = AppColors.FFA1A1A1,
    this.dropdownIconColor = AppColors.A6000000,
    this.disableDropdownIconColor = AppColors.FFA1A1A1,
  }) : super(key: key);

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        tooltip: "",
        offset: Offset(0, selectedStringsList.isEmpty ? 40.0 : 50.0),
        constraints: const BoxConstraints(minWidth: 677.0),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              enabled: false,
              height: 10,
              padding: EdgeInsets.zero,
              child: MultiStringSearchWidget(
                onAdd: onAdd,
                selectedStringsList: selectedStringsList,
              ),
            ),
          ];
        },
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: enabled ? borderColor : disableBorderColor, width: 2.0))),
            child: Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 10.0, right: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: selectedStringsList.isEmpty
                            ? const Padding(
                                padding: EdgeInsets.only(top: 4.0, left: 0.0),
                                child: CustomText(
                                  size: 16.0,
                                  color: AppColors.FFB5B5B5,
                                  fontWeight: CustomFontWeight.regular,
                                  text: "Enter",
                                ),
                              )
                            : Wrap(
                                children: [
                                  for (int i = 0;
                                      i < selectedStringsList.length;
                                      i++)
                                    CustomChipWidget(
                                      disable: !enabled,
                                      textForDisplay: selectedStringsList[i],
                                      onRemoveIconTap: () {
                                        onRemove(
                                            selectedStringsList.elementAt(i));
                                      },
                                    ),
                                ],
                              )),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: enabled ? dropdownIconColor : disableDropdownIconColor,
                    ),
                  ],
                ))),
      ),
    );
  }
}

class MultiStringSearchWidget extends StatefulWidget {
  final List<String> selectedStringsList;
  final Function onAdd;

  const MultiStringSearchWidget({
    Key? key,
    required this.selectedStringsList,
    required this.onAdd,
  }) : super(key: key);

  @override
  State<MultiStringSearchWidget> createState() =>
      _MultiStringSearchWidgetState();
}

class _MultiStringSearchWidgetState extends State<MultiStringSearchWidget> {
  TextEditingController textController = TextEditingController();
  final deBouncer = Debouncer(milliseconds: 500);
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40.0,
          child: CustomUnderlineTextFieldWithLabel(
            focusNode: focusNode,
            validator: null,
            maxLength: 70,
            enabled: true,
            showHint: true,
            isDense: false,
            contentPadding:
                const EdgeInsets.only(left: 16.0, bottom: 10.0, top: -15.0),
            border: AppBorderStyle.underLineInputBorder.copyWith(
              borderSide: const BorderSide(color: AppColors.FFE0E0E0),
            ),
            focussedBorder: AppBorderStyle.underLineInputBorder.copyWith(
              borderSide: const BorderSide(color: AppColors.FFE0E0E0),
            ),
            rightWidgetToLabel: null,
            controller: textController,
            labelText: null,
            hintText: "Type and Select",
            fillColor: AppColors.white,
            onChanged: (v) {
              deBouncer.run(() {
                setState(() {});
              });
            },
          ),
        ),
        if (textController.text.trim().isNotEmpty &&
            widget.selectedStringsList.contains(textController.text.trim()) ==
                false)
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: CustomInkwell(
              onTap: () {
                // Navigator.of(context).pop();
                if (textController.text.trim().isNotEmpty) {
                  widget.onAdd(textController.text.trim());
                  textController.clear();
                  setState(() {});
                  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                    focusNode.requestFocus();
                  });
                }
              },
              child: CustomText(
                text: " Insert '${textController.text}'",
                color: AppColors.A6000000,
                size: 16.0,
              ),
            ),
          )
      ],
    );
  }
}
