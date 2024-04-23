import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/action_bar/action_bar_item.dart';
import 'package:common_jds_flutter/widgets/action_bar/action_bar_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/action_bar/data/action_bar_widget_properties.dart';
import 'package:flutter/material.dart';

class ActionBarWidgetPage extends StatefulWidget {
  const ActionBarWidgetPage({Key? key}) : super(key: key);

  @override
  State<ActionBarWidgetPage> createState() => _ActionBarWidgetPageState();
}

class _ActionBarWidgetPageState extends State<ActionBarWidgetPage> {
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
                    title: ActionBarWidgetProperties.pageDetail.title,
                    description:
                        ActionBarWidgetProperties.pageDetail.description,
                    code: ActionBarWidgetProperties.pageDetail.code ?? '',
                    classPropertiesData:
                        ActionBarWidgetProperties.classPropertiesData,
                    widget: ActionBar(
                      title: "Selected Items",
                      selectedItemCount: 10,
                      onCloseCallback: () {},
                      buttonList: [
                        ActionBarButton(
                            title: 'Assign',
                            icon: const Icon(Icons.home),
                            iconHeight: 20,
                            iconWidth: 18,
                            onTap: () {}),
                        ActionBarButton(
                            title: 'Bulk Update',
                            icon: const Icon(Icons.person),
                            iconHeight: 20,
                            iconWidth: 18,
                            onTap: () {}),
                        ActionBarButton(
                            title: 'Link Tickets',
                            icon: const Icon(Icons.delete),
                            iconHeight: 20,
                            iconWidth: 18,
                            onTap: () {}),
                      ],
                    ),
                  ),
                ])));
  }
}
