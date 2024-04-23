import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import '../data/widget_properties.dart';
import 'package:common_jds_flutter/widgets/add_tags_field/add_tags_widget.dart';

class AddTagsPage extends StatefulWidget {
  const AddTagsPage({Key? key}) : super(key: key);

  @override
  State<AddTagsPage> createState() => _AddTagsPageState();
}

class _AddTagsPageState extends State<AddTagsPage> {
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
              widget: AddTagsField(
                onRemove: (tag){
                  WidgetProperties.demoNames.remove(tag);
                  setState(() {});
                },
                selectedStringsList: WidgetProperties.demoNames,
                hintText: 'f',
                onAdd: (tag){
                  WidgetProperties.demoNames.add(tag);
                  setState(() {});
                },
              ),
            ),
          ]
        )
      )
    );
  }
}