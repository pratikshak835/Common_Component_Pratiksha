import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/pagination/pagination_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/pagination/data/pagination_widget_properties.dart';
import 'package:flutter/material.dart';

class PaginationWidgetPage extends StatefulWidget {
  const PaginationWidgetPage({Key? key}) : super(key: key);

  @override
  State<PaginationWidgetPage> createState() => _PaginationWidgetPageState();
}

class _PaginationWidgetPageState extends State<PaginationWidgetPage> {
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
                    title: PaginationWidgetProperties.pageDetail.title,
                    description:
                        PaginationWidgetProperties.pageDetail.description,
                    code: PaginationWidgetProperties.pageDetail.code ?? '',
                    classPropertiesData:
                        PaginationWidgetProperties.classPropertiesData,
                    widget: PaginationWidget(
                      currentPageNo: "2",
                      onJumpToFirstLeftPressed: () {},
                      onJumpToLastRightPressed: () {},
                      onLeftPressed: () {},
                      onRightPressed: () {},
                      totalPages: "10",
                    ),
                  ),
                ])));
  }
}
