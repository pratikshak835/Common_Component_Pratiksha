import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomRadioButton',
    'description':
        'A radio button allows users to select only one option from a number of choices. '
            'Only one radio button can be selected at a time. When a user chooses a new item, the previous choice is automatically deselected.',
    'code': '''CustomRadioButton(
        required this.isSelected,
        required this.onTap,
        this.isDisabled,
        this.size = 24.0});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'isSelected',
      'required': 'true',
      'description':
          'A boolean value indicating whether the radio button is selected.',
      'default': ''
    },
    {
      'name': 'onTap',
      'required': 'true',
      'description':
          'Callback function triggered when the radio button is tapped.',
      'default': ''
    },
    {
      'name': 'isDisabled',
      'required': 'false',
      'description':
          'A boolean value indicating whether the radio button is disabled.',
      'default': ''
    },
    {
      'name': 'size',
      'required': 'false',
      'description': 'The size of the radio button.',
      'default': '24.0'
    },
  ];

  static bool isSelected = false;
}
