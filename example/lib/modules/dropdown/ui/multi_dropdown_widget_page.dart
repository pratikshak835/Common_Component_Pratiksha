import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:common_jds_flutter/widgets/dropdown/multi_select_dropdown_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:flutter/material.dart';

import '../data/multi_dropdown_widget_properties.dart';

class MultiSelectDropdownWidgetPage extends StatefulWidget {
  MultiSelectDropdownWidgetPage({Key? key}) : super(key: key);

  List<DropdownItem> selectedItemsList = List.empty(growable: true);

  @override
  State<MultiSelectDropdownWidgetPage> createState() =>
      _MultiSelectDropdownWidgetPageState();
}

class _MultiSelectDropdownWidgetPageState
    extends State<MultiSelectDropdownWidgetPage> {
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
                    widget: MultiSelectDropdown(
                      items: WidgetProperties.dropdownList,
                      // selectedItemsList: widget.selectedItemsList,
                      onRemoveCallback: () {},
                      onAddCallback: () {},
                    ),
                  ),
                ])));
  }
}
