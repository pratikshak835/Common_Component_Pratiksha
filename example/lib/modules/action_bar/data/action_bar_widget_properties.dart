import 'package:common_jds_flutter/common/page_model.dart';

class ActionBarWidgetProperties {
  static const pageDetailJson = {
    'title': 'ActionBar',
    'description':
        'A toolkit to perform different actions on multiple selected items at once.',
    'code': '''ActionBar({
        Key? key,
        required this.onCloseCallback,
        this.selectedItemCount = 0,
        required this.title,
        this.itemCountColor = AppColors.white,
        this.itemCountBackgroundColor = AppColors.kPrimaryColor,
        required this.buttonList});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onCloseCallback',
      'required': 'true',
      'description': 'This function is triggered as the action bar closes.',
      'default': ''
    },
    {
      'name': 'selectedItemCount',
      'required': 'false',
      'description': 'Displays a count of selected items.',
      'default': '0'
    },
    {
      'name': 'title',
      'required': 'true',
      'description': 'Sets the title for action bar',
      'default': ''
    },
    {
      'name': 'itemCountColor',
      'required': 'false',
      'description': 'Defines the color of selectedItemCount',
      'default': 'AppColors.white'
    },
    {
      'name': 'itemCountBackgroundColor',
      'required': 'false',
      'description': 'Defines the color of selectedItemCount background.',
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'buttonList',
      'required': 'true',
      'description': 'A list of buttons to be shown on the action bar.',
      'default': ''
    },
  ];

  static bool isSelected = false;
}
