import 'package:common_jds_flutter/common/page_model.dart';

class CalendarWidgetProperties {
  static const pageDetailJson = {
    'title': 'DateRangeWidget',
    'description':
        'The calendar picker component is primarily used to select a speculative date.',
    'code': '''DateRangeWidget(
      {Key? key,
      required this.onDatesSelect,
      required this.displayedString,
      this.showClearIcon = false,
      required this.clearDatesCallback,
      this.enabled = true,
      this.endDate,
      this.offSet,
      required this.highlightDateList,
      required this.child,
      this.initialDate})'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onDatesSelect',
      'required': 'true',
      'description':
          'The onDatesSelect is a hypothetical callback name that might be used to describe a function ',
      'default': ''
    },
    {
      'name': 'displayedString',
      'required': 'true',
      'description': '',
      'default': ''
    },
    {
      'name': 'showClearIcon',
      'required': 'false',
      'description': 'Whether to show the close icon.',
      'default': 'false'
    },
    {
      'name': 'clearDatesCallback',
      'required': 'true',
      'description':
          'The clearDatesCallback is a hypothetical callback name that might be used to describe a function',
      'default': ''
    },
    {
      'name': 'enabled',
      'required': 'false',
      'description': 'enable  calender ',
      'default': ''
    },
    {
      'name': 'endDate',
      'required': 'false',
      'description': 'when we will select particular time then endDate is used',
      'default': ''
    },
    {
      'name': 'offSet',
      'required': 'false',
      'description':
          'an offset typically refers to a displacement or difference in position between two objects or points.  ',
      'default': ''
    },
    {
      'name': 'highlightDateList',
      'required': 'true',
      'description':
          'The highlightDateList is a hypothetical callback name that might be used to describe a function  ',
      'default': ''
    },
    {
      'name': 'child',
      'required': 'true',
      'description':
          'child widget" refers to a widget that is placed within another widget to define its content or appearance.  ',
      'default': ''
    },
    {
      'name': 'initialDate',
      'required': 'false',
      'description':
          'initialDate is a startDate. when we will select particular time then startDate is used',
      'default': ''
    }
  ];
}
