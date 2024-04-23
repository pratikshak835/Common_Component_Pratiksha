import 'package:common_jds_flutter/common/page_model.dart';

class SecondarySwitchWidgetProperties {
  static const pageDetailJson = {
    'title': 'SecondarySwitch',
    'description': 'Switch in different design.',
    'code': '''SecondarySwitch({
        Key? key,
        this.trackHeight = 25,
        this.trackWidth = 50,
        required this.value = false,
        this.activeTrackColor = AppColors.kPrimaryColor,
        this.inActiveTrackColor = AppColors.white,
        this.activeThumbColor = AppColors.white,
        this.inActiveThumbColor = AppColors.FF404040,
        this.trackBorderColor = AppColors.black,
        this.trackBorderWidth = 2,
        required this.onClick});'''
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
      'name': 'onClick',
      'required': 'true',
      'description': 'Called when the user toggles the switch on or off.',
      'default': ''
    },
    {
      'name': 'activeThumbColor',
      'required': 'false',
      'description': "The color of this Switch's thumb when the switch is on.",
      'default': 'AppColors.white'
    },
    {
      'name': 'inactiveThumbColor',
      'required': 'false',
      'description': 'The color to use on the thumb when this switch is off.',
      'default': 'AppColors.FF404040'
    },
    {
      'name': 'activeTrackColor',
      'required': 'false',
      'description': "The color of this Switch's track when the switch is on.",
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'inActiveTrackColor',
      'required': 'false',
      'description': "The color of this Switch's track when the switch is off.",
      'default': 'AppColors.white'
    },
    {
      'name': 'trackBorderColor',
      'required': 'false',
      'description': "The color of this Switch's track border.",
      'default': 'AppColors.black'
    },
    {
      'name': 'trackHeight',
      'required': 'false',
      'description': "Height of the switch track",
      'default': 'trackHeight'
    },
    {
      'name': 'trackWidth',
      'required': 'false',
      'description': "Width of the switch track",
      'default': '50'
    },
    {
      'name': 'trackBorderWidth',
      'required': 'false',
      'description': "Switch track border width.",
      'default': '2'
    },
  ];

  static bool isSelected = false;
}
