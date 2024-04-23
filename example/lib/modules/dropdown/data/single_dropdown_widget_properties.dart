import 'package:common_jds_flutter/common/page_model.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:flutter/material.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'SingleSelectDropdown',
    'description':
        'SingleSelectDropdown allow users to choose from a series of options presented contextually as a list. Often, it is formed of two parts: a trigger and an options menu.',
    'code': '''SingleSelectDropdown(
      {Key? key,
      required this.items,
      this.dropdownLabel,
      this.hint = "Select",
      this.selectedItem,
      this.hoverColor = AppColors.FFF5F5F5,
      this.iconColor = Colors.black,
      this.selectedItemColor = Colors.black,
      this.dropdownLabelColor = Colors.black,
      this.hoverTextColor = AppColors.kPrimaryColor,
      this.borderColor = AppColors.black,
      this.onChange,
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
          const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      this.dropdownPadding,
      this.itemHeight,
      this.readOnly = false});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'key',
      'required': 'false',
      'description': 'Key for identifying the widget uniquely.',
      'default': 'null'
    },
    {
      'name': 'items',
      'required': 'true',
      'description': 'List of items for the dropdown to display.',
      'default': ''
    },
    {
      'name': 'dropdownLabel',
      'required': 'false',
      'description': 'Label for the dropdown.',
      'default': 'null'
    },
    {
      'name': 'hint',
      'required': 'false',
      'description': 'Hint text displayed when no item is selected.',
      'default': '"Select"'
    },
    {
      'name': 'selectedItem',
      'required': 'false',
      'description': 'Currently selected item in the dropdown.',
      'default': 'null'
    },
    {
      'name': 'hoverColor',
      'required': 'false',
      'description': 'Color when dropdown is hovered.',
      'default': 'AppColors.FFF5F5F5'
    },
    {
      'name': 'iconColor',
      'required': 'false',
      'description': 'Color of the dropdown icon.',
      'default': 'Colors.black'
    },
    {
      'name': 'selectedItemColor',
      'required': 'false',
      'description': 'Color of the selected item text.',
      'default': 'Colors.black'
    },
    {
      'name': 'dropdownLabelColor',
      'required': 'false',
      'description': 'Color of the dropdown label text.',
      'default': 'Colors.black'
    },
    {
      'name': 'hoverTextColor',
      'required': 'false',
      'description': 'Text color when dropdown is hovered.',
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'borderColor',
      'required': 'false',
      'description': 'Color of the dropdown border.',
      'default': 'AppColors.black'
    },
    {
      'name': 'onChange',
      'required': 'false',
      'description': 'Callback function triggered when selection changes.',
      'default': 'null'
    },
    {
      'name': 'labelFontSize',
      'required': 'false',
      'description': 'Font size of the dropdown label.',
      'default': '16.0'
    },
    {
      'name': 'labelTextColor',
      'required': 'false',
      'description': 'Text color of the dropdown label.',
      'default': 'AppColors.FF404040'
    },
    {
      'name': 'height',
      'required': 'false',
      'description': 'Height of the dropdown widget.',
      'default': '48.0'
    },
    {
      'name': 'maxDropdownHeight',
      'required': 'false',
      'description': 'Maximum height of the dropdown.',
      'default': '300.0'
    },
    {
      'name': 'hintColor',
      'required': 'false',
      'description': 'Color of the hint text.',
      'default': 'AppColors.FFB5B5B5'
    },
    {
      'name': 'hintWeight',
      'required': 'false',
      'description': 'Font weight of the hint text.',
      'default': 'CustomFontWeight.regular'
    },
    {
      'name': 'borderRadius',
      'required': 'false',
      'description': 'Border radius of the dropdown.',
      'default': '8.0'
    },
    {
      'name': 'hintSize',
      'required': 'false',
      'description': 'Font size of the hint text.',
      'default': '16.0'
    },
    {
      'name': 'onMenuStateChanged',
      'required': 'false',
      'description':
          'Callback function triggered when dropdown menu state changes.',
      'default': 'null'
    },
    {
      'name': 'menuItemTextPadding',
      'required': 'false',
      'description': 'Padding for menu item text.',
      'default': 'const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0)'
    },
    {
      'name': 'dropdownPadding',
      'required': 'false',
      'description': 'Padding for the dropdown widget.',
      'default': 'null'
    },
    {
      'name': 'itemHeight',
      'required': 'false',
      'description': 'Height of each dropdown item.',
      'default': 'null'
    },
    {
      'name': 'readOnly',
      'required': 'false',
      'description':
          'Flag indicating whether the dropdown is read-only or not.',
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
    DropdownItem(
      id: '6',
      description: 'Fam',
    ),
    DropdownItem(
      id: '7',
      description: 'Fam',
    ),
    DropdownItem(
      id: '8',
      description: 'Fam',
    ),
    DropdownItem(
      id: '9',
      description: 'Fam',
    ),
    DropdownItem(
      id: '10',
      description: 'Fam',
    ),
  ];
}
