import 'package:common_jds_flutter/common/page_model.dart';

class ConstantStrings {
  static const widgetTitle = 'CustomText';
  static const widgetDescription =
      'The following page provides information on Jio DS Typography and the Typeface. The JioType typeface is derived and designed in such a way that it completely complements our brand traits.';
  static const typeScaleDescription =
      'Type scales are made up of distinct text styles and values to create balanced and harmonious font sizing. Our type scale is a progression of different font sizes, each with their own specific style and application.';
  static const widgetCode = '''CustomText(
  text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 
  color: Colors.black,
   fontWeight: CustomFontWeight.bold,
  size: Dimens.size16,
  maxLines: 4,
  );''';

  static const pageDetailJson = {
    'title': 'CustomText',
    'description':
        'The following page provides information on Jio DS Typography and the Typeface. The JioType typeface is derived and designed in such a way that it completely complements our brand traits.',
    'code': '''const CustomText(
      @required this.text,
      this.size,
      this.color,
      this.textAlign,
      this.maxLines,
      this.lineHeightToFontSizeRatio,
      this.fontWeight = CustomFontWeight.regular,
      this.overflow = TextOverflow.ellipsis,
      this.fontStyle,
      this.letterSpacing,
      });'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static String demoString =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'text',
      'required': 'true',
      'description': 'The text to display.',
      'default': ''
    },
    {
      'name': 'size',
      'required': 'false',
      'description': 'The font size of the text.',
      'default': ''
    },
    {
      'name': 'color',
      'required': 'false',
      'description': 'The color of the text.',
      'default': ''
    },
    {
      'name': 'textAlign',
      'required': 'false',
      'description': 'The alignment of the text within its container.',
      'default': ''
    },
    {
      'name': 'maxLines',
      'required': 'false',
      'description':
          'The maximum number of lines to display before truncating the text.',
      'default': ''
    },
    {
      'name': 'lineHeightToFontSizeRatio',
      'required': 'false',
      'description': 'The ratio of line height to font size.',
      'default': ''
    },
    {
      'name': 'fontWeight',
      'required': 'false',
      'description': 'The font weight of the text.',
      'default': 'CustomFontWeight.regular'
    },
    {
      'name': 'overflow',
      'required': 'false',
      'description': 'The text overflow behavior.',
      'default': 'TextOverflow.ellipsis'
    },
    {
      'name': 'fontStyle',
      'required': 'false',
      'description': 'The font style of the text.',
      'default': ''
    },
    {
      'name': 'letterSpacing',
      'required': 'false',
      'description': 'The spacing between letters in the text.',
      'default': ''
    },
  ];

  static const headingXLCode = '''const CustomText.headingXl(
      {super.key,
      @required this.text ,
      this.size = 88,
      this.color,
      this.textAlign,
      this.maxLines,
      this.fontWeight = CustomFontWeight.black,
      this.overflow = TextOverflow.ellipsis,
      this.lineHeightToFontSizeRatio = 1,
      this.letterSpacing = -0.3,
      this.fontStyle});''';

  static const headingLCode = '''const CustomText.headingL(
      {super.key,
        @required this.text ,
        this.size = 64,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.black,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.3,
        this.fontStyle});''';

  static const headingMCode = '''const CustomText.headingM(
      {super.key,
        @required this.text ,
        this.size = 40,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.black,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.3,
        this.fontStyle});''';

  static const headingSCode = '''const CustomText.headingS(
      {super.key,
        @required this.text ,
        this.size = 32,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.black,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.3,
        this.fontStyle});''';

  static const headingXSCode = '''const CustomText.headingXS(
      {super.key,
        @required this.text,
        this.size = 24,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.black,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.3,
        this.fontStyle});''';

  static const bodyLCode = '''const CustomText.bodyL(
      {super.key,
        @required this.text,
        this.size = 24,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.medium,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 24/32,
        this.letterSpacing = -0.5,
        this.fontStyle});''';

  static const bodyLBoldCode = '''const CustomText.bodyLBold(
      {super.key,
        @required this.text,
        this.size = 24,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.bold,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 24/32,
        this.letterSpacing = -0.5,
        this.fontStyle});''';

  static const bodySCode = '''const CustomText.bodyS(
      {super.key,
        @required this.text,
        this.size = 16,
        this.color,
        this.textAlign,
        this.maxLines,
        this.fontWeight = CustomFontWeight.medium,
        this.overflow = TextOverflow.ellipsis,
        this.lineHeightToFontSizeRatio = 1,
        this.letterSpacing = -0.5,
        this.fontStyle});''';
}
