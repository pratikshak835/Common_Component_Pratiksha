import 'package:common_jds_flutter/common/page_model.dart';

class PaginationWidgetProperties {
  static const pageDetailJson = {
    'title': 'PaginationWidget',
    'description': 'A widget for moving from one page to another.',
    'code': '''PaginationWidget({
        Key? key,
        required this.onLeftPressed,
        required this.onRightPressed,
        required this.onJumpToFirstLeftPressed,
        required this.onJumpToLastRightPressed,
        required this.currentPageNo,
        required this.totalPages,});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onLeftPressed',
      'required': 'true',
      'description': 'Callback to move one page to the left.',
      'default': ''
    },
    {
      'name': 'onRightPressed',
      'required': 'true',
      'description': 'Callback to move one page to the right.',
      'default': ''
    },
    {
      'name': 'onJumpToFirstLeftPressed',
      'required': 'true',
      'description': 'Callback to jump to first page.',
      'default': ''
    },
    {
      'name': 'onJumpToLastRightPressed',
      'required': 'true',
      'description': 'Callback to jump to last page.',
      'default': ''
    },
    {
      'name': 'currentPageNo',
      'required': 'true',
      'description': 'Displays the current page number.',
      'default': ''
    },
    {
      'name': 'totalPages',
      'required': 'true',
      'description': 'Displays the total number of pages.',
      'default': ''
    },
  ];

  static bool isSelected = false;
}
