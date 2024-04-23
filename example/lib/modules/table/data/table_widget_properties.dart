import 'package:common_jds_flutter/common/page_model.dart';

class CustomTableWidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomTable',
    'description': 'A custom table with resizable columns.',
    'code': '''CustomTable({
        Key? key,
        required this.rows,
        this.dataRowHeight = 40,
        this.headingRowHeight = 40,
        required this.tableHeaderList,
        this.columnHeaderCheckBoxWidget,
        this.showCheckBox = false,
        this.minWidth,
        this.headerListForSortingIcon,
        this.onSortingWidgetTap,
        this.selectedSortingColumn,
        this.headerPadding =
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
        this.headerTextPadding = EdgeInsets.zero,
        this.resizableColumn = true,
        this.showVerticalBorder = true,
        this.tableHeaderColor,
        this.headerTextColor,
        this.height,
        this.columnResizeWidget,
        this.resizeWidgetAlignment = Alignment.centerRight,
        this.onRowCheckBoxTap,
        this.onHeaderCheckBoxTap,
        this.checkBoxColumnWidth = 100,});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'rows',
      'required': 'true',
      'description': 'A list of rows for the table.',
      'default': ''
    },
    {
      'name': 'dataRowHeight',
      'required': 'false',
      'description': 'Sets the height of the row cells.',
      'default': '40'
    },
    {
      'name': 'headingRowHeight',
      'required': 'false',
      'description': 'Sets the height of the headings row.',
      'default': '40'
    },
    {
      'name': 'tableHeaderList',
      'required': 'true',
      'description': 'A list of the columns.',
      'default': ''
    },
    {
      'name': 'columnHeaderCheckBoxWidget',
      'required': 'false',
      'description':
          'Checkbox widget for the header. Displayed only if showCheckBox is set as true.',
      'default': ''
    },
    {
      'name': 'showCheckBox',
      'required': 'false',
      'description': 'Shows and hides the checkbox column.',
      'default': 'false'
    },
    {
      'name': 'minWidth',
      'required': 'false',
      'description': 'Sets the minimum width of the table.',
      'default': ''
    },
    {
      'name': 'headerListForSortingIcon',
      'required': 'false',
      'description':
          'A list of the columns for which the sorting icon should be shown.',
      'default': ''
    },
    {
      'name': 'onSortingWidgetTap',
      'required': 'false',
      'description': 'Called when the sorting widget is clicked.',
      'default': ''
    },
    {
      'name': 'selectedSortingColumn',
      'required': 'false',
      'description': 'Sets currently selected column for sorting.',
      'default': ''
    },
    {
      'name': 'headerPadding',
      'required': 'false',
      'description': 'Sets the padding for the header cells.',
      'default': 'const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12)'
    },
    {
      'name': 'headerTextPadding',
      'required': 'false',
      'description': 'Sets the padding for the header text.',
      'default': 'EdgeInsets.zero'
    },
    {
      'name': 'resizableColumn',
      'required': 'false',
      'description':
          'It set true columns can be resized by dragging on the columnResizeWidget.',
      'default': ''
    },
    {
      'name': 'headerTextColor',
      'required': 'false',
      'description': 'Sets the color of the header text.',
      'default': ''
    },
    {
      'name': 'height',
      'required': 'false',
      'description': 'Sets the height of the table.',
      'default': ''
    },
    {
      'name': 'columnResizeWidget',
      'required': 'false',
      'description': 'A widget to resize the column by dragging.',
      'default': ''
    },
    {
      'name': 'resizeWidgetAlignment',
      'required': 'false',
      'description': 'Sets the alignment of the columnResizeWidget.',
      'default': 'Alignment.centerRight'
    },
    {
      'name': 'onRowCheckBoxTap',
      'required': 'false',
      'description': 'Called when the checkbox of the rows is clicked.',
      'default': ''
    },
    {
      'name': 'onHeaderCheckBoxTap',
      'required': 'false',
      'description': 'Called when the header checkbox is clicked.',
      'default': ''
    },
    {
      'name': 'checkBoxColumnWidth',
      'required': 'false',
      'description': 'Sets the width of the checkbox column.',
      'default': '100'
    },
  ];

  static bool isSelected = false;
}
