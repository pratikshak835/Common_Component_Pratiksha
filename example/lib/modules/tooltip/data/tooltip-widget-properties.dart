import 'package:common_jds_flutter/common/page_model.dart';

class TooltipWidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomToolTip',
    'description':
        "Tooltips are floating elements primarily used for accessibility as its function. It is used to display additional information about a user interface element or a feature.",
    'code': '''CustomToolTip(
      {Key? key,
      required this.child,
      required this.text,
      this.width,
      this.showTooltip = true,
      this.customTooltipAlignment = CustomTooltipAlignment.Bottom})'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static List<Map<String, String>> classPropertiesData = [
    {
      'name': 'child',
      'required': 'true',
      'description':
          'The child widget is typically positioned and rendered within the boundaries of its parent widget',
      'default': ''
    },
    {
      'name': 'text',
      'required': 'true',
      'description': 'The text to display on the tooltip.',
      'default': ''
    },
    {
      'name': 'width',
      'required': 'false',
      'description': 'Width of the tooltip.',
      'default': ''
    },
    {
      'name': 'showTooltip',
      'required': 'false',
      'description': 'Enable and disable the tooltip ',
      'default': 'true'
    },
    {
      'name': 'customTooltipAlignment',
      'required': 'false',
      'description': 'shows default alignment ',
      'default': 'Top'
    },
  ];
}
