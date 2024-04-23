import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/rounded_rectangle/rounded_rectangle_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:flutter/material.dart';

import '../data/widget_properties.dart';

class RoundedRectangleWidgetPage extends StatefulWidget {
  const RoundedRectangleWidgetPage({Key? key}) : super(key: key);

  @override
  State<RoundedRectangleWidgetPage> createState() =>
      _RoundedRectangleWidgetPageState();
}

class _RoundedRectangleWidgetPageState
    extends State<RoundedRectangleWidgetPage> {
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
                    widget: RoundedRectangleWidget(
                      child: SizedBox(),
                    ),
                  ),
                ])));
  }
}
