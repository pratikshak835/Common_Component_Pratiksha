import 'package:common_jds_flutter/common/page_model.dart';

class PrimarySwitchWidgetProperties {
  static const pageDetailJson = {
    'title': 'PrimarySwitch',
    'description':
        'A Material Design switch. Used to toggle the on/off state of a single setting. The switch itself does not maintain any state. Instead, when the state of the switch changes, the widget calls the onChanged callback. Most widgets that use a switch will listen for the onChanged callback and rebuild the switch with a new value to update the visual appearance of the switch.',
    'code': '''PrimarySwitch({
        Key? key,
        required this.value,
        required this.onChanged,
        this.activeThumbColor = AppColors.kPrimaryColor,
        this.inactiveThumbColor = AppColors.FF404040,
        this.trackColor = const MaterialStatePropertyAll(Colors.grey),});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'value',
      'required': 'true',
      'description': 'Whether this switch is on or off.',
      'default': ''
    },
    {
      'name': 'onChanged',
      'required': 'true',
      'description': 'Called when the user toggles the switch on or off.',
      'default': ''
    },
    {
      'name': 'activeThumbColor',
      'required': 'false',
      'description': "The color of this Switch's thumb.",
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'inactiveThumbColor',
      'required': 'false',
      'description': 'The color to use on the thumb when this switch is off.',
      'default': 'AppColors.FF404040'
    },
    {
      'name': 'trackColor',
      'required': 'false',
      'description': "The color of this Switch's track.",
      'default': 'const MaterialStatePropertyAll(Colors.grey)'
    },
  ];

  static bool isSelected = false;
}
