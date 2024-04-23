import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'CupertinoLoader',
    'description':
        'Spinners are often used to indicate an action or task is being processed. Some potential actions include the loading of a page, upload of a document or any other form of information processing.',
    'code': '''CupertinoLoader({
        Key? key, 
        this.radius = 20,
        this.color, 
        this.animating = true
      });
      '''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'radius',
      'required': 'false',
      'description': 'Radius of the spinner widget.',
      'default': '20'
    },
    {
      'name': 'color',
      'required': 'false',
      'description': 'Color of the activity indicator.',
      'default': ''
    },
    {
      'name': 'animating',
      'required': 'false',
      'description': 'Whether the activity indicator is running its animation.',
      'default': 'true'
    },
    {
      'name': 'strokeWidth',
      'required': 'false',
      'description':
          'The width of the line used to draw the circle. Defaults to 4.0.',
      'default': '4.0'
    },
    {
      'name': 'secondaryColor',
      'required': 'false',
      'description':
          'The secondary color of the line used to draw the circle. Defaults to null.',
      'default': 'null'
    },
    {
      'name': 'duration',
      'required': 'false',
      'description':
          'The duration of the progress indicator animation in seconds. Defaults to 1.',
      'default': '1'
    },
    {
      'name': 'rotationSpeed',
      'required': 'false',
      'description':
          'The speed of rotation for the spinner in revolutions per second. Defaults to 3.',
      'default': '3'
    },
    {
      'name': 'beginSize',
      'required': 'false',
      'description': 'The initial size of the dots. Defaults to 0.8.',
      'default': '0.8'
    },
    {
      'name': 'endSize',
      'required': 'false',
      'description': 'The final size of the dots. Defaults to 1.5.',
      'default': '1.5'
    },
    {
      'name': 'height',
      'required': 'false',
      'description':
          'The height of the overlay loading spinner. Defaults to 100.0.',
      'default': '100.0'
    },
    {
      'name': 'width',
      'required': 'false',
      'description':
          'The width of the overlay loading spinner. Defaults to 100.0.',
      'default': '100.0'
    },
    {
      'name': 'opacity',
      'required': 'false',
      'description':
          'The opacity of the overlay loading spinner. Defaults to 0.2.',
      'default': '0.2'
    },
    {
      'name': 'spinnerColor',
      'required': 'false',
      'description': 'The color of the spinner. Defaults to null.',
      'default': 'null'
    },
  ];

  static const circularProgressIndicatorCode =
      ''' CustomCircularProgressIndicator({
    Key? key,
    this.strokeWidth = 4.0,
    this.color = Colors.blue,
    this.secondaryColor,
    this.duration = 1, // Initialize secondaryColor
  });''';

  static const overlayLoadingSpinnerCode = '''OverlayLoadingSpinner(
      {super.key,
      this.height = 100.0,
      this.width = 100.0,
      this.opacity = 0.2,
      this.color = AppColors.black,
      this.radius = 20,
      this.spinnerColor,
      this.animating = true});''';

  static const triangleDotsSpinnerCode = '''TriangleDotSpinner(
      {super.key,
        this.duration = 3,
        this.rotationSpeed = 3,
        this.beginSize = 0.8,
        this.endSize = 1.5});''';
}
