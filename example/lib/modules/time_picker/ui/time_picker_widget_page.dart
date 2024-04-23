import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/time_picker/time_picker_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/time_picker/data/time_picker_widget_properties.dart';
import 'package:flutter/material.dart';

class TimePickerWidgetPage extends StatefulWidget {
  const TimePickerWidgetPage({Key? key}) : super(key: key);

  @override
  State<TimePickerWidgetPage> createState() => _TimePickerWidgetPageState();
}

class _TimePickerWidgetPageState extends State<TimePickerWidgetPage> {
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
                      title: TimePickerWidgetProperties.pageDetail.title,
                      description:
                          TimePickerWidgetProperties.pageDetail.description,
                      code: TimePickerWidgetProperties.pageDetail.code ?? '',
                      classPropertiesData:
                          TimePickerWidgetProperties.classPropertiesData,
                      widget: const TimePickerWidget()),
                ])));
  }
}
