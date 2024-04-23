import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'SearchFieldWithSuggestion',
    'description':
        'The SearchFieldWithSuggestions widget is a customizable search field component that provides suggestions as the user types. It is designed to enhance the user experience by offering real-time suggestions based on the input provided in the search field.',
    'code': '''SearchFieldWithSuggestions(
      {this.onChanged,
      this.onSubmit,
      required this.controller,
      this.onCloseClick,
      this.hintText = "Search",
      this.borderColor = AppColors.FFE8E8E8,
      this.overlayColor = AppColors.white,
      required this.searchBoxWidth,
      this.textStyle,
      this.searchBoxUnFocusedWidth,
      this.cursorColor = AppColors.black,
      this.isAnimationEnabled = false,
      this.borderRadius = 8.0,
      this.overlayHeight = 300.0,
      this.child,
      this.hintStyle = const TextStyle(fontWeight: FontWeight.normal),
      Key? key});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onChanged',
      'required': 'false',
      'description': 'Callback function invoked when the text field changes.',
      'default': ''
    },
    {
      'name': 'onSubmit',
      'required': 'false',
      'description':
          'Callback function invoked when the user submits the text field.',
      'default': ''
    },
    {
      'name': 'controller',
      'required': 'true',
      'description': 'The controller for the text field.',
      'default': ''
    },
    {
      'name': 'onCloseClick',
      'required': 'false',
      'description':
          'Callback function invoked when the close button is clicked.',
      'default': ''
    },
    {
      'name': 'hintText',
      'required': 'false',
      'description': 'The text displayed when the text field is empty.',
      'default': 'Search'
    },
    {
      'name': 'borderColor',
      'required': 'false',
      'description': 'The color of the border around the text field.',
      'default': 'AppColors.FFE8E8E8'
    },
    {
      'name': 'overlayColor',
      'required': 'false',
      'description': 'The color of the overlay behind the suggestions.',
      'default': 'AppColors.white'
    },
    {
      'name': 'searchBoxWidth',
      'required': 'true',
      'description': 'The width of the search box.',
      'default': ''
    },
    {
      'name': 'textStyle',
      'required': 'false',
      'description': 'The style of the text in the search field.',
      'default': ''
    },
    {
      'name': 'searchBoxUnFocusedWidth',
      'required': 'false',
      'description': 'The width of the search box when it is unfocused.',
      'default': ''
    },
    {
      'name': 'cursorColor',
      'required': 'false',
      'description': 'The color of the cursor in the text field.',
      'default': 'AppColors.black'
    },
    {
      'name': 'isAnimationEnabled',
      'required': 'false',
      'description': 'A flag to enable/disable animation for the suggestions.',
      'default': 'false'
    },
    {
      'name': 'borderRadius',
      'required': 'false',
      'description': 'The border radius of the text field.',
      'default': '8.0'
    },
    {
      'name': 'overlayHeight',
      'required': 'false',
      'description': 'The height of the overlay containing the suggestions.',
      'default': '300.0'
    },
    {
      'name': 'child',
      'required': 'false',
      'description': 'A child widget to be placed inside the search field.',
      'default': ''
    },
    {
      'name': 'hintStyle',
      'required': 'false',
      'description': 'The style of the hint text in the search field.',
      'default': 'const TextStyle(fontWeight: FontWeight.normal)'
    }
  ];
}
