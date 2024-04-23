import 'package:common_jds_flutter/common/page_model.dart';

class WidgetProperties {
  static const pageDetailJson = {
    'title': 'CustomUnderlineTextFieldWithLabel',
    'description':
        'The text field allows the user to enter custom text when required using their keyboard.',
    'code': '''CustomUnderlineTextFieldWithLabel(
      {labelText,
        hintText,
        controller,
        prefixIcon,
        suffixIcon,
        showHint = true,
        keyboardType = TextInputType.text,
        validator = Validators.validateEmpty,
        onChanged,
        onSaved,
        maxLength,
        maxLines,
        isObscure = false,
        minLines,
        initialValue,
        readOnly = false,
        onTap,
        focussedBorder = AppBorderStyle.underLineInputBorder,
        border = AppBorderStyle.underLineInputBorder,
        disableBorder = AppBorderStyle.disableUnderLineInputBorder,
        enabled = true,
        autovalidateMode = AutovalidateMode.onUserInteraction,
        suffixIconConstraints,
        prefixText,
        suffixText,
        isDense,
        prefixIconPadding,
        fillColor,
        focusNode,
        rightWidgetToLabel,
        contentPadding,
        labelFontSize = 20.0,
        labelTextColor = AppColors.A6000000,
        onFieldSubmitted,
        textInputAction,
        contentTextColor = AppColors.FF404040,
        errorMaxLines = 1,
        enteredTextColor,
        autoFocus = false,
        inputFormatters,
        showLabel = true});'''
  };

  static PageModel pageDetail = PageModel.fromJson(pageDetailJson);

  static final List<Map<String, String>> classPropertiesData = [
    {
      'name': 'labelText',
      'required': 'false',
      'description': 'The text displayed as the label of the text field.',
      'default': ''
    },
    {
      'name': 'hintText',
      'required': 'false',
      'description': 'The text displayed as a hint in the text field.',
      'default': ''
    },
    {
      'name': 'controller',
      'required': 'false',
      'description':
          'The controller for the text field, to control the text and selection.',
      'default': ''
    },
    {
      'name': 'prefixIcon',
      'required': 'false',
      'description': 'The widget to display before the input field.',
      'default': ''
    },
    {
      'name': 'suffixIcon',
      'required': 'false',
      'description': 'The widget to display after the input field.',
      'default': ''
    },
    {
      'name': 'showHint',
      'required': 'false',
      'description':
          'Whether to show the hint text when the text field is empty.',
      'default': 'true'
    },
    {
      'name': 'keyboardType',
      'required': 'false',
      'description': 'The type of keyboard to display for editing the text.',
      'default': 'TextInputType.text'
    },
    {
      'name': 'validator',
      'required': 'false',
      'description':
          'A function to validate the input value of the text field.',
      'default': 'Validators.validateEmpty'
    },
    {
      'name': 'onChanged',
      'required': 'false',
      'description':
          'A callback function that is called when the text field value changes.',
      'default': ''
    },
    {
      'name': 'onSaved',
      'required': 'false',
      'description':
          'A callback function that is called when the form is saved.',
      'default': ''
    },
    {
      'name': 'maxLength',
      'required': 'false',
      'description':
          'The maximum number of characters allowed in the text field.',
      'default': ''
    },
    {
      'name': 'maxLines',
      'required': 'false',
      'description': 'The maximum number of lines for the text field.',
      'default': ''
    },
    {
      'name': 'isObscure',
      'required': 'false',
      'description': 'Whether to obscure the text entered in the field.',
      'default': 'false'
    },
    {
      'name': 'minLines',
      'required': 'false',
      'description': 'The minimum number of lines for the text field.',
      'default': ''
    },
    {
      'name': 'initialValue',
      'required': 'false',
      'description': 'The initial value for the text field.',
      'default': ''
    },
    {
      'name': 'readOnly',
      'required': 'false',
      'description': 'Whether the text field is read-only.',
      'default': 'false'
    },
    {
      'name': 'onTap',
      'required': 'false',
      'description':
          'A callback function that is called when the text field is tapped.',
      'default': ''
    },
    {
      'name': 'focussedBorder',
      'required': 'false',
      'description': 'The border to display when the text field is focused.',
      'default': 'AppBorderStyle.underLineInputBorder'
    },
    {
      'name': 'border',
      'required': 'false',
      'description':
          'The border to display when the text field is not focused.',
      'default': 'AppBorderStyle.underLineInputBorder'
    },
    {
      'name': 'disableBorder',
      'required': 'false',
      'description': 'The border to display when the text field is disabled.',
      'default': 'AppBorderStyle.disableUnderLineInputBorder'
    },
    {
      'name': 'enabled',
      'required': 'false',
      'description': 'Whether the text field is enabled.',
      'default': 'true'
    },
    {
      'name': 'autovalidateMode',
      'required': 'false',
      'description': 'The auto-validation mode for the text field.',
      'default': 'AutovalidateMode.onUserInteraction'
    },
    {
      'name': 'suffixIconConstraints',
      'required': 'false',
      'description':
          'Constraints for the suffix icon displayed in the text field.',
      'default': ''
    },
    {
      'name': 'prefixText',
      'required': 'false',
      'description': 'Text to display before the input field.',
      'default': ''
    },
    {
      'name': 'suffixText',
      'required': 'false',
      'description': 'Text to display after the input field.',
      'default': ''
    },
    {
      'name': 'isDense',
      'required': 'false',
      'description':
          'Whether the text field should be dense, reducing its height.',
      'default': ''
    },
    {
      'name': 'prefixIconPadding',
      'required': 'false',
      'description': 'Padding for the prefix icon displayed in the text field.',
      'default': ''
    },
    {
      'name': 'fillColor',
      'required': 'false',
      'description': 'The background color of the text field.',
      'default': ''
    },
    {
      'name': 'focusNode',
      'required': 'false',
      'description': 'The focus node for the text field.',
      'default': ''
    },
    {
      'name': 'rightWidgetToLabel',
      'required': 'false',
      'description': 'A widget to display to the right of the label.',
      'default': ''
    },
    {
      'name': 'contentPadding',
      'required': 'false',
      'description': 'Padding around the content of the text field.',
      'default': ''
    },
    {
      'name': 'labelFontSize',
      'required': 'false',
      'description': 'The font size of the label text.',
      'default': '20.0'
    },
    {
      'name': 'labelTextColor',
      'required': 'false',
      'description': 'The text color of the label.',
      'default': 'AppColors.A6000000'
    },
    {
      'name': 'onFieldSubmitted',
      'required': 'false',
      'description':
          'A callback function that is called when the user submits the text field.',
      'default': ''
    },
    {
      'name': 'textInputAction',
      'required': 'false',
      'description':
          'The action to perform when the user submits the text field.',
      'default': ''
    },
    {
      'name': 'contentTextColor',
      'required': 'false',
      'description': 'The text color of the content in the text field.',
      'default': 'AppColors.FF404040'
    },
    {
      'name': 'errorMaxLines',
      'required': 'false',
      'description':
          'The maximum number of lines to display for error messages.',
      'default': '1'
    },
    {
      'name': 'enteredTextColor',
      'required': 'false',
      'description': 'The text color of entered text in the text field.',
      'default': ''
    },
    {
      'name': 'autoFocus',
      'required': 'false',
      'description':
          'Whether the text field should automatically focus when it is rendered.',
      'default': 'false'
    },
    {
      'name': 'inputFormatters',
      'required': 'false',
      'description': 'Formatters to apply to the text input.',
      'default': ''
    },
    {
      'name': 'showLabel',
      'required': 'false',
      'description': 'Whether to show the label for the text field.',
      'default': 'true'
    },
  ];

  static bool checkBoxState = true;
}
