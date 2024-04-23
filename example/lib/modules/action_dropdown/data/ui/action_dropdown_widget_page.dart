import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/action_dropdown/action_dropdown.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:flutter/material.dart';

import '../data/action_dropdown_widget_properties.dart';

class ActionDropdownWidgetPage extends StatefulWidget {
  const ActionDropdownWidgetPage({Key? key}) : super(key: key);

  @override
  State<ActionDropdownWidgetPage> createState() =>
      _ActionDropdownWidgetPageState();
}

class _ActionDropdownWidgetPageState extends State<ActionDropdownWidgetPage> {
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
                    widget: ActionDropDown(
                        items: [
                          DropdownItem(
                              id: 'View',
                              description: 'View',
                              prefixIcon: const Icon(Icons.airplane_ticket,
                                  color: AppColors.black)),
                          DropdownItem(
                              id: 'Delete',
                              description: 'Delete',
                              prefixIcon: const Icon(
                                Icons.delete,
                                color: AppColors.black,
                              ))
                        ],
                        onTap: (String item) {
                          print("Tapped");
                        },
                        customWidget: const Icon(
                          Icons.more_vert,
                          color: AppColors.FF707070,
                        )),
                  ),
                ])));
  }
}
