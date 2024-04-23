import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/single_date_picker/single_date_calendar_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/single_date_calender/data/data/single_date_calendar_picker_widget.dart';
import 'package:flutter/material.dart';

class SingleDatePickerDropdownWidgetPage extends StatefulWidget {
  const SingleDatePickerDropdownWidgetPage({Key? key}) : super(key: key);

  @override
  State<SingleDatePickerDropdownWidgetPage> createState() =>
      _SingleDatePickerDropdownWidgetPageState();
}

class _SingleDatePickerDropdownWidgetPageState
    extends State<SingleDatePickerDropdownWidgetPage> {
  String? selectedString;
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
                      title: SingleDatePickerWidgetProperties.pageDetail.title,
                      description: SingleDatePickerWidgetProperties
                          .pageDetail.description,
                      code: SingleDatePickerWidgetProperties.pageDetail.code ??
                          '',
                      classPropertiesData:
                          SingleDatePickerWidgetProperties.classPropertiesData,
                      widget: SingleDatePicker(
                        enabled: true,
                        showClearIcon: selectedString != null,
                        onDatesSelect: (selected, val2) {
                          selectedString = selected.toString();
                          setState(() {});
                        },
                        displayedString: selectedString ?? "Select Date",
                        clearDatesCallback: () {
                          selectedString = null;
                        },
                      )),
                ])));
  }
}
