import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:common_jds_flutter/widgets/dropdown/single_select_dropdown_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:flutter/material.dart';

import '../data/single_dropdown_widget_properties.dart';

class SingleSelectDropdownWidgetPage extends StatefulWidget {
  SingleSelectDropdownWidgetPage({Key? key}) : super(key: key);

  DropdownItem? selectedDropdown;

  @override
  State<SingleSelectDropdownWidgetPage> createState() =>
      _SingleSelectDropdownWidgetPageState();
}

class _SingleSelectDropdownWidgetPageState
    extends State<SingleSelectDropdownWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: Dimens.size64, horizontal: Dimens.size32),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  WidgetStory(
                    title: WidgetProperties.pageDetail.title,
                    description: WidgetProperties.pageDetail.description,
                    code: WidgetProperties.pageDetail.code ?? '',
                    classPropertiesData: WidgetProperties.classPropertiesData,
                    widget: SingleSelectDropdown(
                      items: WidgetProperties.dropdownList,
                      selectedItem: widget.selectedDropdown,
                      onChange: (selected) {
                        setState(() {
                          widget.selectedDropdown = selected;
                        });
                      },
                      hint: 'Dropdown Hint',
                    ),
                  ),
                ])));
  }
}
