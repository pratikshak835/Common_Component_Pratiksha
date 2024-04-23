import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/loaders/cupertino_loader_widget.dart';
import 'package:common_jds_flutter/widgets/loaders/custom_circular_progress_indicator.dart';
import 'package:common_jds_flutter/widgets/loaders/overlay_loading_spinner.dart';
import 'package:common_jds_flutter/widgets/loaders/triangle_dots_spinner.dart';
import 'package:common_jds_flutter_example/common/code_highlighter_widget.dart';
import 'package:common_jds_flutter_example/common/strings.dart';
import 'package:common_jds_flutter_example/common/table_widget/table_widget.dart';
import 'package:flutter/material.dart';

import '../../loaders//data/widget_properties.dart';

class LoaderWidgetPage extends StatefulWidget {
  const LoaderWidgetPage({Key? key}) : super(key: key);

  @override
  State<LoaderWidgetPage> createState() => _LoaderWidgetPageState();
}

class _LoaderWidgetPageState extends State<LoaderWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 700,
        padding: const EdgeInsets.symmetric(
            vertical: Dimens.size64, horizontal: Dimens.size32),
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText.headingXl(
              text: WidgetProperties.pageDetail.title,
              color: AppColors.FF141414,
            ),
            SizedBox(height: 20),
            CustomText.bodyS(
              text: WidgetProperties.pageDetail.description,
              color: AppColors.FF141414,
              maxLines: 4,
              fontWeight: CustomFontWeight.bold,
            ),
            Divider(color: AppColors.FFE0E0E0, thickness: 1),
            SizedBox(height: Dimens.size30),
            CustomText.headingL(
              text: "Types of Loaders",
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
            ),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: "Cupertino Loader",
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            Divider(color: AppColors.FFE0E0E0, thickness: 1),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: Strings.codeLabel,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            CodeHighLighterWidget(
                codeString: WidgetProperties.pageDetail.code ?? ""),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: Strings.codePreview,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            SizedBox(height: Dimens.size10),
            CupertinoLoader(),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: "Overlay Loading Spinner",
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            Divider(color: AppColors.FFE0E0E0, thickness: 1),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: Strings.codeLabel,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            CodeHighLighterWidget(
                codeString: WidgetProperties.overlayLoadingSpinnerCode),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: Strings.codePreview,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            SizedBox(height: Dimens.size10),
            OverlayLoadingSpinner(),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: "Custom Circular Progress Indicator",
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            Divider(color: AppColors.FFE0E0E0, thickness: 1),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: Strings.codeLabel,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            CodeHighLighterWidget(
                codeString: WidgetProperties.circularProgressIndicatorCode),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: Strings.codePreview,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            SizedBox(height: Dimens.size10),
            CustomCircularProgressIndicator(),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: "Traingle Dots Spinner",
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            Divider(color: AppColors.FFE0E0E0, thickness: 1),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: Strings.codeLabel,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            CodeHighLighterWidget(
                codeString: WidgetProperties.triangleDotsSpinnerCode),
            SizedBox(height: Dimens.size10),
            CustomText(
              text: Strings.codePreview,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            TriangleDotSpinner(),
            const SizedBox(height: Dimens.size10),
            TableWithRadius(
              rowsJsonData: WidgetProperties.classPropertiesData,
            )
          ],
        ),
      ),
    );
  }
}
