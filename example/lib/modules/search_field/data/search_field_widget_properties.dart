import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'SearchWidget',
    'description':
        'A Flutter widget designed to facilitate searching functionality within an application. It consists of a search box that users can interact with to input search queries.',
    'code': '''SearchWidget(
      {this.onChanged,
      this.onSubmit,
      required this.controller,
      this.onCloseClick,
      this.hintText = "Search",
      this.borderColor = AppColors.FFE8E8E8,
      this.searchBoxWidth,
      this.textStyle,
      this.searchBoxUnFocusedWidth,
      this.cursorColor = AppColors.black,
      this.isAnimationEnabled = false,
      this.hintStyle = const TextStyle(fontWeight: FontWeight.normal),
      Key? key});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onChanged',
      'required': 'false',
      'description':
          'Callback function that is called when the text in the search box is changed.',
      'default': ''
    },
    {
      'name': 'onSubmit',
      'required': 'false',
      'description':
          'Callback function that is called when the search action is submitted.',
      'default': ''
    },
    {
      'name': 'controller',
      'required': 'true',
      'description':
          'Controller for the text field that maintains the text being edited.',
      'default': ''
    },
    {
      'name': 'onCloseClick',
      'required': 'false',
      'description':
          'Callback function that is called when the close button is clicked.',
      'default': ''
    },
    {
      'name': 'hintText',
      'required': 'false',
      'description': 'Hint text to display when the search box is empty.',
      'default': '"Search"'
    },
    {
      'name': 'borderColor',
      'required': 'false',
      'description': 'Color of the border of the search box.',
      'default': 'AppColors.FFE8E8E8'
    },
    {
      'name': 'searchBoxWidth',
      'required': 'false',
      'description': 'Width of the search box.',
      'default': ''
    },
    {
      'name': 'textStyle',
      'required': 'false',
      'description': 'Text style for the text in the search box.',
      'default': ''
    },
    {
      'name': 'searchBoxUnFocusedWidth',
      'required': 'false',
      'description': 'Width of the search box when it is unfocused.',
      'default': ''
    },
    {
      'name': 'cursorColor',
      'required': 'false',
      'description': 'Color of the cursor in the search box.',
      'default': 'AppColors.black'
    },
    {
      'name': 'isAnimationEnabled',
      'required': 'false',
      'description':
          'Flag indicating whether animation is enabled for the search box.',
      'default': 'false'
    },
    {
      'name': 'hintStyle',
      'required': 'false',
      'description': 'Style for the hint text in the search box.',
      'default': 'const TextStyle(fontWeight: FontWeight.normal)'
    }
  ];
}
