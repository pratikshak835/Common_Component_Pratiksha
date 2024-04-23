import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/button/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import '../data/widget_properties.dart';

class PrimaryButtonPage extends StatelessWidget {
  const PrimaryButtonPage({Key? key}) : super(key: key);

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
              widget: CustomButton.primary(
                buttonText: 'Submit',
                onClick: (){},
                icon: const Icon(Icons.ac_unit, color: AppColors.white, size: 16),
              ),
              classPropertiesData: WidgetProperties.classPropertiesData,
            ),
          ]
        )
      )
    );
  }
}