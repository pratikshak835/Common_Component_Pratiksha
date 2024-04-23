import 'package:common_jds_flutter_example/common/code_highlighter_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter_example/common/strings.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';

import '../data/constant_strings.dart';

class CustomTextPage extends StatelessWidget {
  const CustomTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: Dimens.size64, horizontal: Dimens.size32),
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            WidgetStory(
              title: ConstantStrings.pageDetail.title,
              description: ConstantStrings.pageDetail.description,
              code: ConstantStrings.pageDetail.code ?? '',
              widget: CustomText(text: ConstantStrings.demoString,
                color: Colors.black,
                fontWeight: CustomFontWeight.bold,
                size: Dimens.size16,
                maxLines: 4,
              ),
              classPropertiesData: ConstantStrings.classPropertiesData,
            ),

            const Divider(color: AppColors.FFE0E0E0, thickness: 1),
            const SizedBox(height: Dimens.size30),
            const CustomText.headingL(text: 'Type Scale Builders'),
            const SizedBox(height: Dimens.size10),
            const CustomText.bodyS(text: ConstantStrings.typeScaleDescription,
              color: AppColors.FF141414,
              maxLines: 4,
              fontWeight: CustomFontWeight.bold,
            ),

            const SizedBox(height: Dimens.size20),
            const CustomText.headingXl(text: 'Heading XL'),
            const SizedBox(height: Dimens.size10),
            const CodeHighLighterWidget(codeString: ConstantStrings.headingXLCode),

            const SizedBox(height: Dimens.size20),
            const CustomText.headingL(text: 'Heading L'),
            const SizedBox(height: Dimens.size10),
            const CodeHighLighterWidget(codeString: ConstantStrings.headingLCode),

            const SizedBox(height: Dimens.size30),
            const CustomText.headingM(text: 'Heading M'),
            const SizedBox(height: Dimens.size10),
            const CodeHighLighterWidget(codeString: ConstantStrings.headingMCode),

            const SizedBox(height: Dimens.size30),
            const CustomText.headingS(text: 'Heading S'),
            const SizedBox(height: Dimens.size10),
            const CodeHighLighterWidget(codeString: ConstantStrings.headingSCode),

            const SizedBox(height: Dimens.size30),
            const CustomText.headingXS(text: 'Heading XS'),
            const SizedBox(height: Dimens.size10),
            const CodeHighLighterWidget(codeString: ConstantStrings.headingXSCode),

            const SizedBox(height: Dimens.size30),
            const CustomText.bodyL(text: 'Body L'),
            const SizedBox(height: Dimens.size10),
            const CodeHighLighterWidget(codeString: ConstantStrings.bodyLCode),

            const SizedBox(height: Dimens.size30),
            const CustomText.bodyLBold(text: 'Body LBold'),
            const SizedBox(height: Dimens.size10),
            const CodeHighLighterWidget(codeString: ConstantStrings.bodyLBoldCode),

            const SizedBox(height: Dimens.size30),
            const CustomText.bodyS(text: 'Body S'),
            const SizedBox(height: Dimens.size10),
            const CodeHighLighterWidget(codeString: ConstantStrings.bodySCode),
          ],
        ),
      ),
    );
  }
}

