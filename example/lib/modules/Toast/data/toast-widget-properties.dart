import 'package:common_jds_flutter/common/page_model.dart';

class ToastWidgetProperties {
  static const pageDetailJson = {
    'title': 'ToastMsgWidget',
    'description':
        'Toasts are user-triggered feedback notifications that are non-intrusive in nature. However, it usually disappears automatically. Sometimes it also prompts the user to take an action.',
    'code': '''ToastMsgWidget(
      {Key? key,
        this.message,
        this.btnLabel,
        this.onCloseTap,
        this.onBtnTap,
        this.color = AppColors.errorColor})'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static List<Map<String, String>> classPropertiesData = [
    {
      'name': 'message',
      'required': 'false',
      'description': 'Support text of the notification',
      'default': ''
    },
    {
      'name': 'btnLabel',
      'required': 'false',
      'description': 'label of a button.',
      'default': ''
    },
    {
      'name': 'onCloseTap',
      'required': 'false',
      'description': 'Whether to show the close icon.',
      'default': ''
    },
    {
      'name': 'onBtnTap',
      'required': 'false',
      'description': 'onTap function is call on button Tap ',
      'default': ''
    },
    {
      'name': 'color',
      'required': 'false',
      'description': 'shows default color ',
      'default': 'AppColors.errorColor'
    },
  ];
}
