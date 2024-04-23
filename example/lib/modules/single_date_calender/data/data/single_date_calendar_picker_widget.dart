import 'package:common_jds_flutter/common/page_model.dart';

class SingleDatePickerWidgetProperties {
  static const pageDetailJson = {
    'title': 'SingleDatePicker',
    'description':
        'A calendar is a system for organizing days for the purpose of social, religious, commercial, or administrative purposes.',
    'code': ''' SingleDatePicker(
     {Key? key,
      required this.onDatesSelect,
      required this.displayedString,
      this.showClearIcon = false,
      required this.clearDatesCallback,
      this.enabled = true,
      this.startDate,
      this.displayedStringColor = AppColors.dropdownUnderlineColor})'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onDatesSelect',
      'required': 'true',
      'description':
          'The onDatesSelect is a hypothetical callback name that might be used to describe a function',
      'default': ''
    },
    {
      'name': 'displayedString',
      'required': 'true',
      'description': 'Any string for the text field.',
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
      'name': 'displayedStringColor',
      'required': 'false',
      'description': 'color of the string.',
      'default': 'AppColors.dropdownUnderlineColor'
    },
    {
      'name': 'startDate',
      'required': 'false',
      'description':
          'when we will select particular time then startDate is used',
      'default': ''
    }
  ];
}
