import 'package:common_jds_flutter/common/page_model.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'SingleSelectSearchDropdown',
    'description':
        'SingleSelectSearchDropdown allow users to choose from a series of options presented contextually as a list. Often, it is formed of two parts: a trigger and an options menu.',
    'code': '''SingleSelectSearchDropdown(
      {Key? key,
      required this.searchController,
      required this.items,
      this.dropdownLabel,
      this.hint = "Select",
      this.selectedItem,
      this.hoverColor = AppColors.FFF5F5F5,
      this.iconColor = Colors.black,
      this.selectedItemColor = Colors.black,
      this.dropdownLabelColor = Colors.black,
      this.hoverTextColor = AppColors.kPrimaryColor,
      this.onItemSelected,
      this.onSearchQueryChanged,
      this.borderColor = Colors.black,
      this.maxDropdownHeight = 300.0,
      this.hintColor = AppColors.FFB5B5B5,
      this.hintWeight = CustomFontWeight.regular,
      this.borderRadius = 10.0,
      this.hintSize = 16.0,
      this.onMenuStateChanged,
      this.onClear,
      this.menuItemTextPadding =
          const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      this.itemHeight,
      this.readOnly = false});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'key',
      'required': 'false',
      'description': 'A unique identifier for the widget.',
      'default': 'null'
    },
    {
      'name': 'searchController',
      'required': 'true',
      'description': 'Controller for handling search functionality.',
      'default': 'null'
    },
    {
      'name': 'items',
      'required': 'true',
      'description': 'The list of items to display in the dropdown.',
      'default': 'null'
    },
    {
      'name': 'dropdownLabel',
      'required': 'false',
      'description': 'Label text for the dropdown.',
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
      'description': 'Currently selected item.',
      'default': 'null'
    },
    {
      'name': 'hoverColor',
      'required': 'false',
      'description': 'Background color when the dropdown is hovered.',
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
      'description': 'Color of the selected item.',
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
      'description': 'Text color when the dropdown is hovered.',
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'onItemSelected',
      'required': 'false',
      'description': 'Callback function triggered when an item is selected.',
      'default': 'null'
    },
    {
      'name': 'onSearchQueryChanged',
      'required': 'false',
      'description':
          'Callback function triggered when the search query changes.',
      'default': 'null'
    },
    {
      'name': 'borderColor',
      'required': 'false',
      'description': 'Color of the dropdown border.',
      'default': 'Colors.black'
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
      'default': '10.0'
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
      'description': 'Callback function triggered when the menu state changes.',
      'default': 'null'
    },
    {
      'name': 'onClear',
      'required': 'false',
      'description':
          'Callback function triggered when the selection is cleared.',
      'default': 'null'
    },
    {
      'name': 'menuItemTextPadding',
      'required': 'false',
      'description': 'Padding for each menu item text.',
      'default': 'EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0)'
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
      'description': 'Whether the dropdown is read-only or not.',
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
