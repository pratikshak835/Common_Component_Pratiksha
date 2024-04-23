import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'AddTagsField',
    'description':
        'The AddTagsField widget is a customizable input field designed for adding and managing tags. It provides a user-friendly interface for users to add and remove tags dynamically. The widget requires two essential callback functions: onAdd, which is triggered when a tag is added, and onRemove, which is called when a tag is removed. Additionally, it requires a list of selected tags (selectedStringsList) to display existing tags and manage their state. The hintText property allows developers to set a placeholder text to guide users on how to interact with the field. With these features, the AddTagsField widget offers a flexible and intuitive solution for implementing tag-based input functionality in Flutter applications.',
    'code': '''AddTagsField({
    required this.onAdd,
    required this.selectedStringsList,
    this.hintText,
    required this.onRemove,
    this.enabled = true,
    this.borderColor = AppColors.A6000000,
    this.disableBorderColor = AppColors.FFA1A1A1,
    this.dropdownIconColor = AppColors.A6000000,
    this.disableDropdownIconColor = AppColors.FFA1A1A1,
  });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onAdd',
      'required': 'true',
      'description': 'Callback function triggered when a tag is added.',
      'default': ''
    },
    {
      'name': 'selectedStringsList',
      'required': 'true',
      'description': 'List of selected strings/tags.',
      'default': ''
    },
    {
      'name': 'hintText',
      'required': 'false',
      'description': 'Hint text displayed within the field.',
      'default': ''
    },
    {
      'name': 'onRemove',
      'required': 'true',
      'description': 'Callback function triggered when a tag is removed.',
      'default': ''
    },
    {
      'name': 'enabled',
      'required': 'false',
      'description': 'A boolean value indicating whether the field is enabled.',
      'default': 'true'
    },
    {
      'name': 'borderColor',
      'required': 'false',
      'description': 'The border color of the field.',
      'default': 'AppColors.A6000000'
    },
    {
      'name': 'disableBorderColor',
      'required': 'false',
      'description': 'The border color of the field when disabled.',
      'default': 'AppColors.FFA1A1A1'
    },
    {
      'name': 'dropdownIconColor',
      'required': 'false',
      'description': 'The color of the dropdown icon.',
      'default': 'AppColors.A6000000'
    },
    {
      'name': 'disableDropdownIconColor',
      'required': 'false',
      'description': 'The color of the dropdown icon when disabled.',
      'default': 'AppColors.FFA1A1A1'
    },
  ];

  static List<String> demoNames = [
    'Alice',
    'Bob',
    'Charlie',
    'David',
    'Emma',
    'Frank',
    'Grace',
    'Henry',
    'Isabella',
    'Jack',
    'Katherine',
    'Liam'
  ];
}
