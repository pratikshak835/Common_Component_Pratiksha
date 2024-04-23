import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'RoundedRectangleWidget',
    'description':
        'A Rectangle Image Widget is a graphical user interface (GUI) component commonly used in software applications and websites to display images. It is typically represented as a rectangular-shaped area on the screen with an image embedded within it. This widget allows users to view images within a designated area of the interface.',
    'code': '''RoundedRectangleWidget(
      {super.key,
      required this.child,
      this.width = 50,
      this.height = 50,
      this.onTap,
      this.radius = 8.0,
      this.color = AppColors.white,
      this.borderColor = AppColors.FFE0E0E0,
      this.borderWidth = 1.0,
      this.padding,
      this.margin});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'child',
      'required': 'true',
      'description': 'Child of the Widget.',
      'default': ''
    },
    {
      'name': 'radius',
      'required': 'false',
      'description': 'Radius of the Widget.',
      'default': '8.0'
    },
    {
      'name': 'color',
      'required': 'false',
      'description': 'Color of the Container.',
      'default': 'white'
    },
    {
      'name': 'width',
      'required': 'false',
      'description': 'Width of the Container.',
      'default': '50'
    },
    {
      'name': 'height',
      'required': 'false',
      'description': 'Height of the Container.',
      'default': '50'
    },
    {
      'name': 'borderColor',
      'required': 'false',
      'description': 'Border color of the Widget.',
      'default': 'FFE0E0E0'
    },
    {
      'name': 'borderWidth',
      'required': 'false',
      'description': 'Border Width of the Widget',
      'default': '1.0'
    },
    {
      'name': 'onTap',
      'required': 'false',
      'description':
          'The function that executes when the user click on widget.',
      'default': ''
    },
    {
      'name': 'padding',
      'required': 'false',
      'description': 'Padding around the widget.',
      'default': ''
    },
    {
      'name': 'margin',
      'required': 'false',
      'description': 'Margin around the widget.',
      'default': ''
    },
  ];
}
