import 'package:common_jds_flutter/widgets/button/button_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import '../data/button_properties.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: Dimens.size64, horizontal: Dimens.size32),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
          children: [
            WidgetStory(title:
            WidgetProperties.pageDetail.title,
              description: WidgetProperties.pageDetail.description,
              code: WidgetProperties.pageDetail.code ?? '',
              widget: CustomButton(
                  buttonText: 'Submit',
                onClick: (){
              },
            ),
          classPropertiesData: WidgetProperties.classPropertiesData,
        ),]
    )));
  }
}