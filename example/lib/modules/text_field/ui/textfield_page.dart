import 'package:flutter/material.dart';
import 'package:common_jds_flutter/widgets/text_field/textfield_widget.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import '../data/widget_properties.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: Dimens.size64, horizontal: Dimens.size32),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
          children: [
            WidgetStory(
              title: WidgetProperties.pageDetail.title,
              description: WidgetProperties.pageDetail.description,
              code: WidgetProperties.pageDetail.code ?? '',
              classPropertiesData: WidgetProperties.classPropertiesData,
              widget: const CustomUnderlineTextFieldWithLabel(
                hintText: 'Type here',
                labelText: 'Text Field',
              ),
            ),
          ]
        )
      )
    );
  }
}