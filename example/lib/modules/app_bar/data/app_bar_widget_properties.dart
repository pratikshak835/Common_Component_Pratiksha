import 'package:common_jds_flutter/common/page_model.dart';

class AppBarWidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomAppBar',
    'description':
        'A Material Design app bar. An app bar consists of a toolbar and potentially other widgets. The AppBar displays the toolbar widgets, leading, title, and actions, above the bottom (if any).',
    'code': '''CustomAppBar({
        Key? key,
        this.titleWidget,
        this.appBarHeight = kToolbarHeight,
        this.leading,
        this.leadingWidth = 24,
        this.addBackButton = false,
        this.onBackPress,
        this.backgroundColor = const Color(0xFF1E7B74),
        this.backButtonColor = Colors.white,
        this.actions,
        this.actionsIconTheme,
        this.bottom,
        this.bottomHeight = 100,
        this.centerTitle,
        this.onAppBarTap,
        this.openDrawer,
        this.primary,});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'titleWidget',
      'required': 'false',
      'description': 'The primary widget displayed in the app bar.',
      'default': ''
    },
    {
      'name': 'appBarHeight',
      'required': 'false',
      'description': 'Defines the height of app bar.',
      'default': 'kToolbarHeight'
    },
    {
      'name': 'leading',
      'required': 'false',
      'description': "A widget to display before the toolbar's title.",
      'default': ''
    },
    {
      'name': 'leadingWidth',
      'required': 'false',
      'description': "Defines the width of leading widget.",
      'default': '24'
    },
    {
      'name': 'addBackButton',
      'required': 'false',
      'description': 'Adds a back icon for the app bar.',
      'default': 'false'
    },
    {
      'name': 'onBackPress',
      'required': 'false',
      'description': 'On press event for app bar back icon.',
      'default': ''
    },
    {
      'name': 'backgroundColor',
      'required': 'false',
      'description': "The fill color to use for an app bar's Material",
      'default': 'const Color(0xFF1E7B74)'
    },
    {
      'name': 'backButtonColor',
      'required': 'false',
      'description': 'Sets the color of back icon.',
      'default': 'Colors.white'
    },
    {
      'name': 'actions',
      'required': 'false',
      'description':
          'A list of Widgets to display in a row after the title widget.',
      'default': ''
    },
    {
      'name': 'actionsIconTheme',
      'required': 'false',
      'description':
          "The color, opacity, and size to use for the icons that appear in the app bar's actions.",
      'default': 'const IconThemeData(size: 20)'
    },
    {
      'name': 'bottom',
      'required': 'false',
      'description': 'This widget appears across the bottom of the app bar.',
      'default': ''
    },
    {
      'name': 'bottomHeight',
      'required': 'false',
      'description':
          'Sets the height of bottom widget which appears across the bottom of the app bar.',
      'default': '100'
    },
    {
      'name': 'centerTitle',
      'required': 'false',
      'description':
          'It sets the alignment of the title widget to the center of the app bar.',
      'default': ''
    },
    {
      'name': 'onAppBarTap',
      'required': 'false',
      'description': 'A callback for an onTap event on app bar.',
      'default': ''
    },
    {
      'name': 'openDrawer',
      'required': 'false',
      'description':
          'A callback to open the drawer by pressing the default leading widget. This is set only if the leading widget is null.',
      'default': ''
    },
    {
      'name': 'primary',
      'required': 'false',
      'description':
          'Whether this app bar is being displayed at the top of the screen.',
      'default': 'true'
    },
  ];

  static bool isSelected = false;
}
