import 'package:common_jds_flutter/common/page_model.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:flutter/material.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'MultiSelectDropdown',
    'description':
        'A Flutter widget that provides a dropdown menu with multi-select functionality. Users can select multiple items from the dropdown list by tapping on them. The selected items are displayed as chips within the dropdown field. The dropdown menu can be expanded or collapsed by tapping on the dropdown arrow icon.',
    'code': '''MultiSelectDropdown({
    Key? key,
    required this.items,
    this.dropdownLabel,
    this.hint = "Select",
    required this.onRemoveCallback,
    required this.onAddCallback,
    this.hoverColor = AppColors.FFF5F5F5,
    this.iconColor = Colors.black,
    this.selectedItemColor = Colors.black,
    this.dropdownLabelColor = Colors.black,
    this.hoverTextColor = AppColors.kPrimaryColor,
    this.borderColor = AppColors.black,
    this.labelFontSize = 16.0,
    this.labelTextColor = AppColors.FF404040,
    this.height = 48.0,
    this.maxDropdownHeight = 300.0,
    this.hintColor = AppColors.FFB5B5B5,
    this.hintWeight = CustomFontWeight.regular,
    this.borderRadius = 8.0,
    this.hintSize = 16.0,
    this.onMenuStateChanged,
    this.menuItemTextPadding =
        const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
    this.dropdownPadding,
    this.itemHeight,
    this.readOnly = false,
  });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'key',
      'required': 'false',
      'description': 'The key to control widget rebuilding.',
      'default': 'null'
    },
    {
      'name': 'items',
      'required': 'true',
      'description': 'The list of items to display in the dropdown.',
      'default': ''
    },
    {
      'name': 'dropdownLabel',
      'required': 'false',
      'description': 'The label to be displayed in the dropdown.',
      'default': 'null'
    },
    {
      'name': 'hint',
      'required': 'false',
      'description': 'The hint text displayed when no value is selected.',
      'default': '"Select"'
    },
    {
      'name': 'onRemoveCallback',
      'required': 'true',
      'description': 'Callback function triggered when an item is removed.',
      'default': ''
    },
    {
      'name': 'onAddCallback',
      'required': 'true',
      'description': 'Callback function triggered when an item is added.',
      'default': ''
    },
    {
      'name': 'hoverColor',
      'required': 'false',
      'description': 'The background color when the dropdown is hovered.',
      'default': 'AppColors.FFF5F5F5'
    },
    {
      'name': 'iconColor',
      'required': 'false',
      'description': 'The color of the dropdown icon.',
      'default': 'Colors.black'
    },
    {
      'name': 'selectedItemColor',
      'required': 'false',
      'description': 'The color of the selected item in the dropdown.',
      'default': 'Colors.black'
    },
    {
      'name': 'dropdownLabelColor',
      'required': 'false',
      'description': 'The color of the dropdown label text.',
      'default': 'Colors.black'
    },
    {
      'name': 'hoverTextColor',
      'required': 'false',
      'description': 'The text color when the dropdown is hovered.',
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'borderColor',
      'required': 'false',
      'description': 'The color of the dropdown border.',
      'default': 'AppColors.black'
    },
    {
      'name': 'labelFontSize',
      'required': 'false',
      'description': 'The font size of the dropdown label.',
      'default': '16.0'
    },
    {
      'name': 'labelTextColor',
      'required': 'false',
      'description': 'The text color of the dropdown label.',
      'default': 'AppColors.FF404040'
    },
    {
      'name': 'height',
      'required': 'false',
      'description': 'The height of the dropdown.',
      'default': '48.0'
    },
    {
      'name': 'maxDropdownHeight',
      'required': 'false',
      'description': 'The maximum height of the dropdown.',
      'default': '300.0'
    },
    {
      'name': 'hintColor',
      'required': 'false',
      'description': 'The color of the hint text.',
      'default': 'AppColors.FFB5B5B5'
    },
    {
      'name': 'hintWeight',
      'required': 'false',
      'description': 'The font weight of the hint text.',
      'default': 'CustomFontWeight.regular'
    },
    {
      'name': 'borderRadius',
      'required': 'false',
      'description': 'The border radius of the dropdown.',
      'default': '8.0'
    },
    {
      'name': 'hintSize',
      'required': 'false',
      'description': 'The font size of the hint text.',
      'default': '16.0'
    },
    {
      'name': 'onMenuStateChanged',
      'required': 'false',
      'description': 'Callback function triggered when the menu state changes.',
      'default': 'null'
    },
    {
      'name': 'menuItemTextPadding',
      'required': 'false',
      'description': 'Padding for menu item text.',
      'default': 'EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0)'
    },
    {
      'name': 'dropdownPadding',
      'required': 'false',
      'description': 'Padding for the dropdown.',
      'default': 'null'
    },
    {
      'name': 'itemHeight',
      'required': 'false',
      'description': 'The height of each dropdown item.',
      'default': 'null'
    },
    {
      'name': 'readOnly',
      'required': 'false',
      'description': 'Specifies whether the dropdown is read-only or not.',
      'default': 'false'
    }
  ];

  static List<DropdownItem> dropdownList = [
    DropdownItem(
        id: '1',
        description: 'Adam',
        prefixIcon: const Icon(Icons.confirmation_num_sharp)),
    DropdownItem(
      id: '2',
      description: 'Blake',
    ),
    DropdownItem(
      id: '3',
      description: 'Zac',
    ),
    DropdownItem(
      id: '4',
      description: 'Effron',
    ),
    DropdownItem(
      id: '5',
      description: 'Fam',
    ),
  ];
}
