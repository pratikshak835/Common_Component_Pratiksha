import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/calendar/calendar_widgets.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/calender/data/calendar_widget_properties.dart';
import 'package:flutter/material.dart';

class CalendarWidgetPage extends StatefulWidget {
  const CalendarWidgetPage({Key? key}) : super(key: key);

  @override
  State<CalendarWidgetPage> createState() => _CalendarWidgetPageState();
}

class _CalendarWidgetPageState extends State<CalendarWidgetPage> {
  @override
  DateTime? selectedStartDate;
  DateTime? selectedEndDate;
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
                    title: CalendarWidgetProperties.pageDetail.title,
                    description:
                        CalendarWidgetProperties.pageDetail.description,
                    code: CalendarWidgetProperties.pageDetail.code ?? '',
                    classPropertiesData:
                        CalendarWidgetProperties.classPropertiesData,
                    widget: CalendarDropdownWidget(
                      showClearIcon:
                          selectedStartDate != null || selectedEndDate != null,
                      displayedString: getSelectedDateRange(),
                      onDatesSelect: onCalendarSelect,
                      endDate: DateTime.now(),
                      offSet: const Offset(150, -12),
                      highlightDateList: [
                        if (selectedStartDate != null)
                          selectedStartDate!
                        else
                          DateTime.now(),
                        if (selectedEndDate != null) selectedEndDate!
                      ],
                      clearDatesCallback: clearDates,
                      child: Text(
                        getSelectedDateRange(),
                      ),
                    ),
                  ),
                ])));
  }

  void clearDates() {
    selectedStartDate = null;
    selectedEndDate = null;
  }

  void onCalendarSelect(DateTime? selectedDate1, DateTime? selectedDate2) {
    selectedStartDate = selectedDate1;
    selectedEndDate = selectedDate2;
    setState(() {});
  }

  String getSelectedDateRange() {
    if (selectedEndDate == null && selectedStartDate == null) {
      return "selected date range";
    } else {
      String result = "";
      result = result + selectedStartDate.toString();
      if (selectedEndDate != null) {
        result = result + '-' + selectedEndDate.toString();
      }
      return result;
    }
  }
}
