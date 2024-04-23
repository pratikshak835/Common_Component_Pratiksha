import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/avatar/circle_avatar.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter_example/common/code_highlighter_widget.dart';
import 'package:common_jds_flutter_example/common/strings.dart';
import 'package:common_jds_flutter_example/common/table_widget/table_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';

import '../data/avatar_constant_strings.dart';


class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

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
              title: AvatarProperties.pageDetail.title,
              description: AvatarProperties.pageDetail.description,
              code: AvatarProperties.pageDetail.code ?? '',
              widget: CircleAvatarText(
                imageUrl: AvatarProperties.demoImgUrl,
              ),
              classPropertiesData: AvatarProperties.classPropertiesData,
            ),
          ],
        ),
      ),
    );
  }
}
