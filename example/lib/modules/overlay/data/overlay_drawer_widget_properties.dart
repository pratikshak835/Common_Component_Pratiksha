import 'package:common_jds_flutter/common/page_model.dart';

class OverlayDrawerWidgetProperties {
  static const pageDetailJson = {
    'title': 'OverlayDrawer',
    'description': 'A custom overlay.',
    'code': '''OverlayDrawer({
        required this.body,
        this.left,
        this.right,
        this.top,
        this.bottom,
        this.height = 300,
        this.width = 300,
        this.backgroundColor,
        this.overlayColor,
        this.closeIcon = Icons.close,
        this.closeIconSize = 24,
        this.closeIconColor = AppColors.kPrimaryColor,
        required this.onCloseIconTap,
        this.borderRadius = const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        this.title = "Title",
        this.footer,
        this.footerBackgroundColor = AppColors.FF404040,
        this.footerPadding =
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0)});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'body',
      'required': 'true',
      'description': 'Displays the content of the overlay.',
      'default': ''
    },
    {
      'name': 'left',
      'required': 'false',
      'description':
          'Position of the overlay from the left side of the screen.',
      'default': ''
    },
    {
      'name': 'right',
      'required': 'false',
      'description':
          'Position of the overlay from the right side of the screen.',
      'default': ''
    },
    {
      'name': 'top',
      'required': 'false',
      'description': 'Position of the overlay from the top of the screen.',
      'default': ''
    },
    {
      'name': 'bottom',
      'required': 'false',
      'description': 'Position of the overlay from the bottom of the screen.',
      'default': ''
    },
    {
      'name': 'height',
      'required': 'false',
      'description': 'Height of the overlay.',
      'default': '300'
    },
    {
      'name': 'width',
      'required': 'false',
      'description': 'Width of the overlay.',
      'default': '300'
    },
    {
      'name': 'backgroundColor',
      'required': 'false',
      'description': 'Color of the background outside of the overlay.',
      'default': ''
    },
    {
      'name': 'overlayColor',
      'required': 'false',
      'description': 'Color of the overlay.',
      'default': ''
    },
    {
      'name': 'closeIcon',
      'required': 'false',
      'description': 'Icon to close the overlay.',
      'default': 'Icons.close'
    },
    {
      'name': 'closeIconSize',
      'required': 'false',
      'description': 'Size of the close icon.',
      'default': '24'
    },
    {
      'name': 'closeIconColor',
      'required': 'false',
      'description': 'Color of the close icon.',
      'default': 'AppColors.kPrimaryColor'
    },
    {
      'name': 'onCloseIconTap',
      'required': 'true',
      'description': 'Called when the close icon is tapped.',
      'default': ''
    },
    {
      'name': 'borderRadius',
      'required': 'false',
      'description': 'Sets the border radius of the overlay.',
      'default':
          'const BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),)'
    },
    {
      'name': 'title',
      'required': 'false',
      'description': 'Title of the overlay',
      'default': ''
    },
    {
      'name': 'footer',
      'required': 'false',
      'description': 'This widget is displayed at the bottom of the overlay.',
      'default': ''
    },
    {
      'name': 'footerBackgroundColor',
      'required': 'false',
      'description': 'Sets the background color of the footer.',
      'default': 'AppColors.FF404040'
    },
    {
      'name': 'footerPadding',
      'required': 'false',
      'description': 'Sets the padding around the footer.',
      'default': 'const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0)'
    },
  ];

  static bool isSelected = false;
}
