import 'package:common_jds_flutter_example/common/code_highlighter_widget.dart';
import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter_example/common/strings.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';

import 'table_widget/table_widget.dart';

class WidgetStory extends StatelessWidget {
  const WidgetStory({Key? key,
    required this.title,
    required this.description,
    required this.code,
    required this.widget,
    required this.classPropertiesData}) : super(key: key);
  final String title;
  final String description;
  final String code;
  final Widget widget;
  final List classPropertiesData;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomText.headingXl(
          text: title,
          color: AppColors.FF141414,
        ),
        const SizedBox(height: 20),
        CustomText.bodyS(text: description,
          color: AppColors.FF141414,
          maxLines: 4,
          fontWeight: CustomFontWeight.bold,
        ),
        const Divider(color: AppColors.FFE0E0E0, thickness: 1),
        const SizedBox(height: Dimens.size30),

        const CustomText(text: Strings.codeLabel,
          color: AppColors.FF141414,
          fontWeight: CustomFontWeight.black,
          size: Dimens.size32,
        ),
        const SizedBox(height: Dimens.size10),
        CodeHighLighterWidget(codeString: code ?? ''),

        const SizedBox(height: Dimens.size10),
        const CustomText(text: Strings.codePreview,
          color: AppColors.FF141414,
          fontWeight: CustomFontWeight.black,
          size: Dimens.size32,
        ),
        const SizedBox(height: Dimens.size10),
        widget,
        const SizedBox(height: Dimens.size30),

        const CustomText(text: Strings.propertiesTableLabel,
          color: AppColors.FF141414,
          fontWeight: CustomFontWeight.black,
          size: Dimens.size32,
        ),
        const SizedBox(height: Dimens.size10),
        TableWithRadius(rowsJsonData: classPropertiesData,)
      ],
    );
  }
}
