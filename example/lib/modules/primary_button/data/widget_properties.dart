import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomButton.primary',
    'description': 'A PrimaryButton is an interactive element used to confirm a choice of an action. The action is taken by clicking the button and the acknowledgement is provided by changes in the visual style of the same button.',
    'code': '''const CustomButton.primary({
    required this.onClick,
    required this.buttonText,
    this.icon,
    this.buttonColor = AppColors.kPrimaryColor,
    this.height = 45,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.buttonTextColor = Colors.white,
    this.buttonBorderColor = AppColors.FFE0E0E0,
    this.disableCursor = false,
    this.boxShadow,
    this.borderRadius = 1000,
    this.isBorder = false,
  });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onClick',
      'required': 'true',
      'description': 'Callback function triggered when the button is clicked.',
      'default': ''
    },
    {
      'name': 'buttonText',
      'required': 'true',
      'description': 'The text displayed on the button.',
      'default': ''
    },
    {
      'name': 'icon',
      'required': 'false',
      'description': 'Icon displayed alongside the button text.',
      'default': ''
    },
    {
      'name': 'buttonColor',
      'required': 'false',
      'description': 'The background color of the button.',
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'height',
      'required': 'false',
      'description': 'The height of the button.',
      'default': '45'
    },
    {
      'name': 'padding',
      'required': 'false',
      'description': 'The padding around the button content.',
      'default': 'const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)'
    },
    {
      'name': 'buttonTextColor',
      'required': 'false',
      'description': 'The color of the button text.',
      'default': 'Colors.white'
    },
    {
      'name': 'buttonBorderColor',
      'required': 'false',
      'description': 'The border color of the button.',
      'default': 'AppColors.FFE0E0E0'
    },
    {
      'name': 'disableCursor',
      'required': 'false',
      'description': 'A boolean value indicating whether the button cursor should be disabled.',
      'default': 'false'
    },
    {
      'name': 'boxShadow',
      'required': 'false',
      'description': 'The shadow cast by the button.',
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
