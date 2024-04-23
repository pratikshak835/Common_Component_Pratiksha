import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'ActionDropDown',
    'description':
        'A customizable dropdown widget that allows users to select from a list of actions. It provides a dropdown button that, when clicked, displays a list of options for the user to choose from. Each option represents an action that can be performed. The dropdown can be customized with various properties such as the list of actions, dropdown button style, and dropdown menu style.',
    'code': ''' ActionDropDown({
    required this.items,
    required this.onTap,
    required this.customWidget,
    this.offSet,
    this.textColor = AppColors.black,
    this.width,
    this.constraints,
    this.onOpened,
    this.onClosed,
    Key? key,
  });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'items',
      'required': 'true',
      'description': 'The items to be displayed in the action drop-down.',
      'default': ''
    },
    {
      'name': 'onTap',
      'required': 'true',
      'description':
          'Callback function triggered when an item in the drop-down is tapped.',
      'default': ''
    },
    {
      'name': 'customWidget',
      'required': 'true',
      'description':
          'The custom widget to be displayed as the action drop-down.',
      'default': ''
    },
    {
      'name': 'offSet',
      'required': 'false',
      'description': 'The offset of the action drop-down.',
      'default': ''
    },
    {
      'name': 'textColor',
      'required': 'false',
      'description': 'The color of the text in the action drop-down.',
      'default': 'AppColors.black'
    },
    {
      'name': 'width',
      'required': 'false',
      'description': 'The width of the action drop-down.',
      'default': ''
    },
    {
      'name': 'constraints',
      'required': 'false',
      'description': 'Additional constraints for the action drop-down.',
      'default': ''
    }
  ];
}
