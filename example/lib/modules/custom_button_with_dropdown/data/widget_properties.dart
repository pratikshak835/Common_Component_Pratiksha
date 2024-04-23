import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomButtonWithDropdown',
    'description': 'A CustomButtonWithDropdown is an interactive element used to confirm a choice of an action. The action is taken by clicking the button, and the acknowledgement is provided by changes in the visual style of the same button. Additionally, it includes a dropdown feature, allowing users to select from a list of options or perform additional actions.',
    'code': '''const CustomButtonWithDropdown({
    required this.onTap1,
    required this.secondChild,
    required this.label,
    this.height = 45,
    this.padding =
    const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 16.0, right: 16.0),
    this.icon,
    this.color = AppColors.kPrimaryColor,
    this.hoveredIcon,
    this.hoverColor,
    this.secondaryChildHoverColor,
    this.secondChildColor = AppColors.kPrimaryColor,
    this.hoverTextColor,
    this.tooltipMessage,
    this.showToolTip = false,
  });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'onTap1',
      'required': 'true',
      'description': 'Callback function triggered when the main button is tapped.',
      'default': ''
    },
    {
      'name': 'secondChild',
      'required': 'true',
      'description': 'The secondary widget displayed alongside the main button.',
      'default': ''
    },
    {
      'name': 'label',
      'required': 'true',
      'description': 'The label or text displayed on the main button.',
      'default': ''
    },
    {
      'name': 'height',
      'required': 'false',
      'description': 'The height of the main button.',
      'default': '45'
    },
    {
      'name': 'padding',
      'required': 'false',
      'description': 'The padding around the main button content.',
      'default': 'const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 16.0, right: 16.0)'
    },
    {
      'name': 'icon',
      'required': 'false',
      'description': 'Icon displayed on the main button.',
      'default': ''
    },
    {
      'name': 'color',
      'required': 'false',
      'description': 'The background color of the main button.',
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'hoveredIcon',
      'required': 'false',
      'description': 'Icon displayed on the main button when hovered.',
      'default': ''
    },
    {
      'name': 'hoverColor',
      'required': 'false',
      'description': 'Background color of the main button when hovered.',
      'default': ''
    },
    {
      'name': 'secondaryChildHoverColor',
      'required': 'false',
      'description': 'Color of the secondary child when the main button is hovered.',
      'default': ''
    },
    {
      'name': 'secondChildColor',
      'required': 'false',
      'description': 'The background color of the secondary child.',
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'hoverTextColor',
      'required': 'false',
      'description': 'Text color of the main button when hovered.',
      'default': ''
    },
    {
      'name': 'tooltipMessage',
      'required': 'false',
      'description': 'The tooltip message displayed when hovering over the main button.',
      'default': ''
    },
    {
      'name': 'showToolTip',
      'required': 'false',
      'description': 'A boolean value indicating whether to show a tooltip.',
      'default': 'false'
    },
  ];

}
