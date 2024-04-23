import 'package:common_jds_flutter/common/page_model.dart';

class AvatarProperties {

  static const pageDetailJson = {
    'title': 'CircleAvatarText',
    'description':
      'The avatar component is a visual representation of a user. It can take the form of image, initials or an icon. A user can be both an individual or an organisation.',
    'code': '''CircleAvatarText(
      {this.imageUrl,
      this.text,
      this.radius = 30,
      this.fontSize = 14.0,
      this.backgroundColor = AppColors.FFE5F1F7,
      this.textColor = AppColors.FF0A5274,
      this.isFocused = false,
      this.hoveredBackgroundColor = AppColors.FF67C3EF,
      this.hoveredTextColor= AppColors.FF00364F,
      this.isDisable = false,
      this.focusedBorderColor = AppColors.black,
      this.focusedBorderWidth = 3.0,
      });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static String demoImgUrl = 'https://static.intercomassets.com/avatars/5597640/square_128/Screenshot_2022-12-22_at_17.06.31-1671735360.png';

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'imageUrl',
      'required': 'false',
      'description': 'The URL of the image to display within the circle avatar.',
      'default': ''
    },
    {
      'name': 'text',
      'required': 'false',
      'description': 'The text to display within the circle avatar if no image is provided.',
      'default': ''
    },
    {
      'name': 'radius',
      'required': 'false',
      'description': 'The radius of the circle avatar.',
      'default': '30'
    },
    {
      'name': 'fontSize',
      'required': 'false',
      'description':
          'The font size of the text within the circle avatar.',
      'default': '14.0'
    },
    {
      'name': 'backgroundColor',
      'required': 'false',
      'description':
          'The background color of the circle avatar.',
      'default': 'AppColors.FFE5F1F7'
    },
    {
      'name': 'textColor',
      'required': 'false',
      'description': 'The color of the text within the circle avatar.',
      'default': 'AppColors.FF0A5274'
    },
    {
      'name': 'isFocused',
      'required': 'false',
      'description': 'A boolean value indicating whether the circle avatar is focused.',
      'default': 'false'
    },
    {
      'name': 'hoveredBackgroundColor',
      'required': 'false',
      'description':
          'The background color of the circle avatar when hovered over.',
      'default': 'AppColors.FF67C3EF'
    },
    {
      'name': 'hoveredTextColor',
      'required': 'false',
      'description':
          'The color of the text within the circle avatar when hovered over.',
      'default': 'AppColors.FF00364F'
    },
    {
      'name': 'isDisable',
      'required': 'false',
      'description': 'A boolean value indicating whether the circle avatar is disabled.',
      'default': 'false'
    },
    {
      'name': 'focusedBorderColor',
      'required': 'false',
      'description': 'The border color of the circle avatar when focused.',
      'default': 'AppColors.black'
    },
    {
      'name': 'focusedBorderWidth',
      'required': 'false',
      'description': 'The border width of the circle avatar when focused.',
      'default': '3.0'
    },
  ];
}