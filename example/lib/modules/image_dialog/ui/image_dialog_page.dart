import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/image_dialog/image_dialog_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:flutter/material.dart';

import '../../image_dialog///data/widget_properties.dart';

class ImageDialogPage extends StatefulWidget {
  const ImageDialogPage({Key? key}) : super(key: key);

  @override
  State<ImageDialogPage> createState() => _ImageDialogPageState();
}

class _ImageDialogPageState extends State<ImageDialogPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: Dimens.size64, horizontal: Dimens.size32),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  WidgetStory(
                      title: WidgetProperties.pageDetail.title,
                      description: WidgetProperties.pageDetail.description,
                      code: WidgetProperties.pageDetail.code ?? '',
                      classPropertiesData: WidgetProperties.classPropertiesData,
                      widget: ImageDialogWidget(
                        imageUrl:
                            "https://images.unsplash.com/photo-1533450718592-29d45635f0a9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8anBnfGVufDB8fDB8fHww",
                        onClose: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(context);
                        },
                        fileType: MyFileType.IMAGE,
                      )),
                ])));
  }
}
