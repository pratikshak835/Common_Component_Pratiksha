import 'package:common_jds_flutter/common/page_model.dart';

class DialogWidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomDialog',
    'description':
        'CustomDialog informs the user about situations that require acknowledgment. It has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content.',
    'code': '''CustomDialog({
        Key? key,
        this.contentPadding = 32,
        required this.radius,
        required this.title,
        required this.body,
        this.btn1Text = "Click 1",
        this.btn2Text = "Click 2",
        this.btn3Text = "Click 3",
        this.onBtn1Tap,
        this.onBtn2Tap,
        this.onBtn3Tap,
        required this.onClose,
        this.titleColor = AppColors.FF141414,
        this.btn1Color = AppColors.kPrimaryColor,
        this.btn2Color = AppColors.kPrimaryColor,
        this.btn3Color = AppColors.kPrimaryColor,
        this.showBtn1 = true,
        this.showBtn2 = false,
        this.showBtn3 = false,
        this.alignment = Alignment.center,
        this.height,
        this.width = 600
        this.dismissOnOutsideClick = false
        this.btn1BorderColor = AppColors.kPrimaryColor,
        this.btn2BorderColor = AppColors.dropdownUnderlineColor,
        this.btn3BorderColor = AppColors.kPrimaryColor,
        this.btn1TextColor = AppColors.white,
        this.btn2TextColor = AppColors.kPrimaryColor,
        this.btn3TextColor = AppColors.white,});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'contentPadding',
      'required': 'true',
      'description': 'Padding around the content.',
      'default': '32',
    },
    {
      'name': 'radius',
      'required': 'true',
      'description': 'Corner radius of the dialog.',
      'default': '',
    },
    {
      'name': 'title',
      'required': 'true',
      'description': 'Title of dialog.',
      'default': '',
    },
    {
      'name': 'body',
      'required': 'true',
      'description': 'Content of dialog.',
      'default': '',
    },
    {
      'name': 'btn1Text',
      'required': 'false',
      'description': 'Button 1 text',
      'default': 'Click 1',
    },
    {
      'name': 'btn2Text',
      'required': 'false',
      'description': 'Button 2 text',
      'default': 'Click 2',
    },
    {
      'name': 'btn3Text',
      'required': 'false',
      'description': 'Button 3 text',
      'default': 'Click 3',
    },
    {
      'name': 'onBtn1Tap',
      'required': 'false',
      'description': 'Called when button 1 is pressed.',
      'default': '',
    },
    {
      'name': 'onBtn2Tap',
      'required': 'false',
      'description': 'Called when button 2 is pressed.',
      'default': '',
    },
    {
      'name': 'onBtn3Tap',
      'required': 'false',
      'description': 'Called when button 3 is pressed.',
      'default': '',
    },
    {
      'name': 'onClose',
      'required': 'true',
      'description': 'Called when cross icon is tapped.',
      'default': '',
    },
    {
      'name': 'titleColor',
      'required': 'false',
      'description': 'Sets the color of dialog title.',
      'default': 'AppColors.FF141414',
    },
    {
      'name': 'btn1Color',
      'required': 'false',
      'description': 'Sets the color of button 1',
      'default': 'AppColors.kPrimaryColor',
    },
    {
      'name': 'btn2Color',
      'required': 'false',
      'description': 'Sets the color of button 2',
      'default': 'AppColors.kPrimaryColor',
    },
    {
      'name': 'btn3Color',
      'required': 'false',
      'description': 'Sets the color of button 3',
      'default': 'AppColors.kPrimaryColor',
    },
    {
      'name': 'showBtn1',
      'required': 'false',
      'description':
          'Sets the visibility of button 1. Button 1 is visible id this is set true.',
      'default': 'true',
    },
    {
      'name': 'showBtn2',
      'required': 'false',
      'description':
          'Sets the visibility of button 2. Button 2 is visible id this is set true.',
      'default': 'false',
    },
    {
      'name': 'showBtn3',
      'required': 'false',
      'description':
          'Sets the visibility of button 3. Button 3 is visible id this is set true.',
      'default': 'false',
    },
    {
      'name': 'alignment',
      'required': 'false',
      'description': 'Sets the alignment of the dialog on the screen',
      'default': 'Alignment.center',
    },
    {
      'name': 'height',
      'required': 'false',
      'description': 'Sets the height of the dialog.',
      'default': '',
    },
    {
      'name': 'width',
      'required': 'false',
      'description': 'Sets the width of the dialog.',
      'default': '600',
    },
    {
      'name': 'dismissOnOutsideClick',
      'required': 'false',
      'description':
          'If set true the dialog closes when click outside the dialog.',
      'default': 'false',
    },
    {
      'name': 'btn1BorderColor',
      'required': 'false',
      'description': 'Sets the border color of button 1',
      'default': 'AppColors.kPrimaryColor',
    },
    {
      'name': 'btn2BorderColor',
      'required': 'false',
      'description': 'Sets the border color of button 2',
      'default': 'AppColors.dropdownUnderlineColor',
    },
    {
      'name': 'btn3BorderColor',
      'required': 'false',
      'description': 'Sets the border color of button 3',
      'default': 'AppColors.kPrimaryColor',
    },
    {
      'name': 'btn1TextColor',
      'required': 'false',
      'description': 'Sets the text color of button 1',
      'default': 'AppColors.white',
    },
    {
      'name': 'btn2TextColor',
      'required': 'false',
      'description': 'Sets the text color of button 2',
      'default': 'AppColors.kPrimaryColor',
    },
    {
      'name': 'btn3TextColor',
      'required': 'false',
      'description': 'Sets the text color of button 3',
      'default': 'AppColors.white',
    },
  ];

  static bool isSelected = false;
}
