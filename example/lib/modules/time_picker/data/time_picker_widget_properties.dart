import 'package:common_jds_flutter/common/page_model.dart';

class TimePickerWidgetProperties {
  static const pageDetailJson = {
    'title': 'TimePickerDialog',
    'description':
        'A time picker is a widget that allows users to select a specific time, typically in hours and minutes.',
    'code': '''TimePickerDialog({
    Key? key,
    required this.initialTime,
    this.cancelText,
    this.confirmText,
    this.helpText,
    this.errorInvalidText,
    this.hourLabelText,
    this.minuteLabelText,
    this.restorationId,
    this.initialEntryMode = TimePickerEntryMode.dial,
    this.onEntryModeChanged,
  })'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static List<Map<String, String>> classPropertiesData = [
    {
      'name': 'initialTime',
      'required': 'true',
      'description': 'The time initially selected when the dialog is shown.',
      'default': ''
    },
    {
      'name': 'cancelText',
      'required': 'false',
      'description': 'Optionally provide your own text for the cancel button.',
      'default': ''
    },
    {
      'name': 'confirmText',
      'required': 'false',
      'description': 'Optionally provide your own text for the confirm button.',
      'default': ''
    },
    {
      'name': 'helpText',
      'required': 'false',
      'description':
          'Optionally provide your own help text to the header of the time picker.',
      'default': ''
    },
    {
      'name': 'errorInvalidText',
      'required': 'false',
      'description': 'Optionally provide your own validation error text.',
      'default': ''
    },
    {
      'name': 'hourLabelText',
      'required': 'false',
      'description': 'Optionally provide your own hour label text.',
      'default': ''
    },
    {
      'name': 'minuteLabelText',
      'required': 'false',
      'description': 'Optionally provide your own minute label text.',
      'default': ''
    },
    {
      'name': 'restorationId',
      'required': 'false',
      'description':
          'Restoration ID to save and restore the state of the [TimePickerDialog].',
      'default': ''
    },
    {
      'name': 'initialEntryMode',
      'required': 'false',
      'description':
          'The entry mode for the picker. Whether its text input or a dial.',
      'default': 'TimePickerEntryMode.dial'
    },
    {
      'name': 'onEntryModeChanged',
      'required': 'false',
      'description': 'Callback called when the selected entry mode is changed.',
      'default': ''
    },
  ];
}
