import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'ImageDialogWidget',
    'description':
        'An image dialog is a graphical user interface element that presents an image within a dialog window. It is commonly used in mobile and web applications to display images in a pop-up window that overlays the main content.',
    'code': '''ImageDialogWidget(
      {super.key,
      required this.imageUrl,
      required this.onClose,
      required this.fileType,
      this.closeIcon});
'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'imageUrl',
      'required': 'true',
      'description': 'Url of Image to be shown.',
      'default': ''
    },
    {
      'name': 'onClose',
      'required': 'true',
      'description':
          'The function that executes when close icon icon is clicked.',
      'default': ''
    },
    {
      'name': 'fileType',
      'required': 'true',
      'description': 'FileType to be specified to display the content.',
      'default': ''
    },
    {
      'name': 'closeIcon',
      'required': 'false',
      'description': 'Widget to be shown on close button.',
      'default': ''
    },
  ];
}
