import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomChipWidget',
    'description':
        'Chip are components similar to buttons, that help label, filter and categorise our content. We use tags in two ways; firstly as interactive toggles switching between adding/removing content (for example filters) and secondly as a means to aggregate our content around a specific theme or category e.g. Entertainment, Health etc. When used in either of these two ways, tags can be either interactive or not depending on their context.',
    'code': '''CustomChipWidget(
      {required this.textForDisplay,
      required this.onRemoveIconTap,
      this.radius = 4.0,
      this.textColor = AppColors.FF46070B,
      this.backgroundColor = AppColors.FFFEF2E9,
      this.margin = const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 8.0),
      this.padding = const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
      this.constraints = const BoxConstraints(maxWidth: 130.0),
      this.showRemoveIcon = true,
      this.disableBackgroundColor = AppColors.FFF5F5F6,
      this.disableTextColor = AppColors.FFA1A1A1,
      this.disable = false,
      this.removeIconColor = AppColors.FF909090,
      this.disableRemoveIconColor = AppColors.FFA1A1A1,
      });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'textForDisplay',
      'required': 'true',
      'description': 'The text to display within the chip widget.',
      'default': ''
    },
    {
      'name': 'onRemoveIconTap',
      'required': 'true',
      'description':
          'Callback function triggered when the remove icon is tapped.',
      'default': ''
    },
    {
      'name': 'radius',
      'required': 'false',
      'description': 'The border radius of the chip widget.',
      'default': '4.0'
    },
    {
      'name': 'textColor',
      'required': 'false',
      'description': 'The color of the text within the chip widget.',
      'default': 'AppColors.FF46070B'
    },
    {
      'name': 'backgroundColor',
      'required': 'false',
      'description': 'The background color of the chip widget.',
      'default': 'AppColors.FFFEF2E9'
    },
    {
      'name': 'margin',
      'required': 'false',
      'description': 'The margin around the chip widget.',
      'default': 'const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 8.0)'
    },
    {
      'name': 'padding',
      'required': 'false',
      'description': 'The padding within the chip widget.',
      'default': 'const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0)'
    },
    {
      'name': 'constraints',
      'required': 'false',
      'description': 'The constraints for the chip widget.',
      'default': 'const BoxConstraints(maxWidth: 130.0)'
    },
    {
      'name': 'showRemoveIcon',
      'required': 'false',
      'description':
          'A boolean value indicating whether to show the remove icon.',
      'default': 'true'
    },
    {
      'name': 'disableBackgroundColor',
      'required': 'false',
      'description': 'The background color of the chip widget when disabled.',
      'default': 'AppColors.FFF5F5F6'
    },
    {
      'name': 'disableTextColor',
      'required': 'false',
      'description': 'The text color of the chip widget when disabled.',
      'default': 'AppColors.FFA1A1A1'
    },
    {
      'name': 'disable',
      'required': 'false',
      'description': 'A boolean value indicating whether the chip widget is disabled.',
      'default': 'false'
    },
    {
      'name': 'removeIconColor',
      'required': 'false',
      'description': 'The color of the remove icon within the chip widget.',
      'default': 'AppColors.FF909090'
    },
    {
      'name': 'disableRemoveIconColor',
      'required': 'false',
      'description': 'The color of the remove icon within the chip widget when disabled.',
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
