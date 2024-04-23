import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomCheckbox',
    'description':
        'Checkboxes are used within an interface when there is a list of options and the user may select any number of choices, including zero.',
    'code': '''CustomCheckbox({
    required onChanged,
    required value,
    enabled = true,
    readOnly = false,
  });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onChanged',
      'required': 'true',
      'description':
          'Callback function that is called when the value of the checkbox changes.',
      'default': ''
    },
    {
      'name': 'value',
      'required': 'true',
      'description': 'The current value of the checkbox.',
      'default': ''
    },
    {
      'name': 'enabled',
      'required': 'false',
      'description':
          'Whether this checkbox is enabled. If disabled, the checkbox will not respond to user input.',
      'default': 'true'
    },
    {
      'name': 'readOnly',
      'required': 'false',
      'description':
          'Whether this checkbox is read-only. If read-only, the checkbox will not respond to user input, but it will still be enabled.',
      'default': 'false'
    },
  ];

  static bool checkBoxState = true;
}
