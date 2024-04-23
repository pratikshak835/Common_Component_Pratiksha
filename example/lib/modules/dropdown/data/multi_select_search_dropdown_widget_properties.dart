import 'package:common_jds_flutter/common/page_model.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'MultiSelectSearchDropdown',
    'description':
        'MultiSelectSearchDropdown allow users to choose from a series of options presented contextually as a list. Often, it is formed of two parts: a trigger and an options menu. A textfield is provided to search the required elements ',
    'code': '''MultiSelectSearchDropdown(
      {Key? key,
      required this.searchController,
      required this.items,
      required this.selectedItemsList,
      required this.onRemoveCallback,
      required this.onAddCallback,
      this.dropdownLabel,
      this.hint = "Select",
      this.hoverColor = AppColors.FFF5F5F5,
      this.iconColor = Colors.black,
      this.selectedItemColor = Colors.black,
      this.dropdownLabelColor = Colors.black,
      this.hoverTextColor = AppColors.kPrimaryColor,
      this.borderColor = AppColors.black,
      this.onSearchQueryChanged,
      this.labelFontSize = 16.0,
      this.labelTextColor = AppColors.FF404040,
      this.height = 48.0,
      this.maxDropdownHeight = 300.0,
      this.hintColor = AppColors.FFB5B5B5,
      this.hintWeight = CustomFontWeight.regular,
      this.borderRadius = 8.0,
      this.hintSize = 16.0,
      this.onMenuStateChanged,
      this.onClear,
      this.menuItemTextPadding =
          const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
      this.itemHeight,
      this.readOnly = false});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'key',
      'required': 'false',
      'description':
          'Key for identifying the dropdown widget in the widget tree.',
      'default': 'null'
    },
    {
      'name': 'searchController',
      'required': 'true',
      'description':
          'Controller for managing the search functionality of the dropdown.',
      'default': ''
    },
    {
      'name': 'items',
      'required': 'true',
      'description': 'List of items displayed in the dropdown.',
      'default': ''
    },
    {
      'name': 'selectedItemsList',
      'required': 'true',
      'description': 'List of currently selected items in the dropdown.',
      'default': ''
    },
    {
      'name': 'onRemoveCallback',
      'required': 'true',
      'description':
          'Callback function invoked when an item is removed from the selection.',
      'default': ''
    },
    {
      'name': 'onAddCallback',
      'required': 'true',
      'description':
          'Callback function invoked when an item is added to the selection.',
      'default': ''
    },
    {
      'name': 'dropdownLabel',
      'required': 'false',
      'description': 'Label displayed on the dropdown button.',
      'default': 'null'
    },
    {
      'name': 'hint',
      'required': 'false',
      'description': 'Hint text displayed when no item is selected.',
      'default': '"Select"'
    },
    {
      'name': 'hoverColor',
      'required': 'false',
      'description': 'Background color when hovering over the dropdown.',
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
      'description': 'Color of selected items in the dropdown.',
      'default': 'Colors.black'
    },
    {
      'name': 'dropdownLabelColor',
      'required': 'false',
      'description': 'Color of the dropdown label.',
      'default': 'Colors.black'
    },
    {
      'name': 'hoverTextColor',
      'required': 'false',
      'description': 'Text color when hovering over the dropdown.',
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'borderColor',
      'required': 'false',
      'description': 'Color of the dropdown border.',
      'default': 'AppColors.black'
    },
    {
      'name': 'onSearchQueryChanged',
      'required': 'false',
      'description': 'Callback function invoked when the search query changes.',
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
      'description': 'Height of the dropdown button.',
      'default': '48.0'
    },
    {
      'name': 'maxDropdownHeight',
      'required': 'false',
      'description': 'Maximum height of the dropdown menu.',
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
      'description': 'Border radius of the dropdown button.',
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
          'Callback function invoked when the state of the dropdown menu changes.',
      'default': 'null'
    },
    {
      'name': 'onClear',
      'required': 'false',
      'description':
          'Callback function invoked when the clear button is pressed.',
      'default': 'null'
    },
    {
      'name': 'menuItemTextPadding',
      'required': 'false',
      'description': 'Padding for the text of each dropdown menu item.',
      'default': 'EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0)'
    },
    {
      'name': 'itemHeight',
      'required': 'false',
      'description': 'Height of each dropdown menu item.',
      'default': 'null'
    },
    {
      'name': 'readOnly',
      'required': 'false',
      'description':
          'Boolean value indicating whether the dropdown is read-only or not.',
      'default': 'false'
    }
  ];

  static List<DropdownItem> dropdownList = [
    DropdownItem(id: '1', description: 'Adam'),
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

  static List<DropdownItem> tempDropdownList = [
    DropdownItem(id: '1', description: 'Adam'),
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
