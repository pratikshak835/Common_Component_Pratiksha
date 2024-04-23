import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'Button',
    'description': 'A button is an interactive element that triggers an event or action. They let users know what will happen next.',
    'code': '''CustomButton({
    required this.onClick,
    required this.buttonText,
    this.buttonColor = AppColors.FFF5F5F5,
    this.buttonTextColor = AppColors.kPrimaryColor,
    this.buttonBorderColor = AppColors.FFE0E0E0,
    this.icon,
    this.height = 45,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.disableCursor = false,
    this.boxShadow,
    this.borderRadius = 1000,
    this.isBorder = true,
  });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onClick',
      'required': 'true',
      'description':
      'The function to execute when the button is clicked.',
      'default': ''
    },
    {
      'name': 'buttonText',
      'required': 'true',
      'description': 'The text to display on the button.',
      'default': ''
    },
    {
      'name': 'buttonColor',
      'required': 'false',
      'description':
      'The background color of the button.',
      'default': 'FFF5F5F5'
    },
    {
      'name': 'buttonTextColor',
      'required': 'false',
      'description': 'The text color of the button.',
      'default': 'kPrimaryColor'
    },
    {
      'name': 'buttonBorderColor',
      'required': 'false',
      'description':
      'The border color of the button.',
      'default': 'FFE0E0E0'
    },
    {
      'name': 'icon',
      'required': 'false',
      'description':
      'Optional icon to display on the button.',
      'default': ''
    },
    {
      'name': 'height',
      'required': 'false',
      'description':
      'The height of the button.',
      'default': '45'
    },
    {
      'name': 'padding',
      'required': 'false',
      'description':
      'The padding around the button content.',
      'default': 'const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)'
    },
    {
      'name': 'disableCursor',
      'required': 'false',
      'description':
      'Whether to disable the cursor when hovering over the button.',
      'default': 'false'
    },
    {
      'name': 'boxShadow',
      'required': 'false',
      'description':
      'Optional box shadow for the button.',
      'default': ''
    },
    {
      'name': 'borderRadius',
      'required': 'false',
      'description': 'The border radius of the button.',
      'default': '1000'
    },
    {
      'name': 'isBorder',
      'required': 'false',
      'description': 'A boolean value indicating whether the button has a border.',
      'default': 'false'
    },
  ];

}
