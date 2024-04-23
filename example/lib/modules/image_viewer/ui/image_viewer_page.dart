import 'dart:typed_data';

import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/image_viewer/image_viewer_widget.dart';
import 'package:common_jds_flutter_example/common/code_highlighter_widget.dart';
import 'package:common_jds_flutter_example/common/strings.dart';
import 'package:common_jds_flutter_example/common/table_widget/table_widget.dart';
import 'package:flutter/material.dart';

import '../../image_viewer////data/widget_properties.dart';

class ImageViewerPage extends StatefulWidget {
  const ImageViewerPage({Key? key}) : super(key: key);

  @override
  State<ImageViewerPage> createState() => _ImageViewerPageState();
}

class _ImageViewerPageState extends State<ImageViewerPage> {
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
            const SizedBox(height: 20),
            CustomText.bodyS(
              text: WidgetProperties.pageDetail.description,
              color: AppColors.FF141414,
              maxLines: 4,
              fontWeight: CustomFontWeight.bold,
            ),
            const Divider(color: AppColors.FFE0E0E0, thickness: 1),
            const SizedBox(height: Dimens.size30),
            const CustomText.headingL(
              text: "Different Image Viewers",
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
            ),
            const SizedBox(height: Dimens.size10),
            const CustomText(
              text: "Asset Image Viewer",
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            const Divider(color: AppColors.FFE0E0E0, thickness: 1),
            const SizedBox(height: Dimens.size10),
            const CustomText(
              text: Strings.codeLabel,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            const CodeHighLighterWidget(
                codeString: WidgetProperties.assetImageCode ?? ""),
            const SizedBox(height: Dimens.size10),
            const CustomText(
              text: Strings.codePreview,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            const SizedBox(height: Dimens.size10),
            ImageViewer.asset(
              assetImagePath: "assets/color.png",
            ),
            const SizedBox(height: Dimens.size10),
            const CustomText(
              text: "Network Image Viewer",
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            const Divider(color: AppColors.FFE0E0E0, thickness: 1),
            const SizedBox(height: Dimens.size10),
            const CustomText(
              text: Strings.codeLabel,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            const CodeHighLighterWidget(
                codeString: WidgetProperties.networkImageCode),
            const SizedBox(height: Dimens.size10),
            const CustomText(
              text: Strings.codePreview,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            const SizedBox(height: Dimens.size10),
            ImageViewer.network(
              imageUrl:
                  "https://images.unsplash.com/photo-1533450718592-29d45635f0a9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8anBnfGVufDB8fDB8fHww",
              height: 100,
              width: 100,
            ),
            const SizedBox(height: Dimens.size10),
            const CustomText(
              text: "Memory Image Viewer",
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            const Divider(color: AppColors.FFE0E0E0, thickness: 1),
            const SizedBox(height: Dimens.size10),
            const CustomText(
              text: Strings.codeLabel,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            const CodeHighLighterWidget(
                codeString: WidgetProperties.memoryImageCode),
            const SizedBox(height: Dimens.size10),
            const CustomText(
              text: Strings.codePreview,
              color: AppColors.FF141414,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size32,
            ),
            const SizedBox(height: Dimens.size10),
            ImageViewer.memory(
              bytes: Uint8List.fromList(WidgetProperties.imageBytes),
              height: 100,
              width: 100,
            ),
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
