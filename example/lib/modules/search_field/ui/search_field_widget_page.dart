import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/search_field/search_field.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:flutter/material.dart';

import '../data/search_field_widget_properties.dart';

class SearchFieldPage extends StatefulWidget {
  const SearchFieldPage({Key? key}) : super(key: key);

  @override
  State<SearchFieldPage> createState() => _SearchFieldPageState();
}

class _SearchFieldPageState extends State<SearchFieldPage> {
  TextEditingController searchController = TextEditingController();
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
                    widget: SearchField(
                      onChanged: (query) {},
                      onCloseClick: () {},
                      isAnimationEnabled: true,
                      searchBoxWidth: 900,
                      searchBoxUnFocusedWidth: 300,
                      controller: searchController,
                      hintText: "Search",
                    ),
                  ),
                ])));
  }
}
