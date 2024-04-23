import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/tooltip/tooltip_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/tooltip/data/tooltip-widget-properties.dart';
import 'package:flutter/material.dart';

class TooltipWidgetPage extends StatefulWidget {
  const TooltipWidgetPage({Key? key}) : super(key: key);

  @override
  State<TooltipWidgetPage> createState() => _TooltipWidgetPageState();
}

class _TooltipWidgetPageState extends State<TooltipWidgetPage> {
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
                      title: TooltipWidgetProperties.pageDetail.title,
                      description:
                          TooltipWidgetProperties.pageDetail.description,
                      code: TooltipWidgetProperties.pageDetail.code ?? '',
                      classPropertiesData:
                          TooltipWidgetProperties.classPropertiesData,
                      widget: Row(
                        children: [
                          CustomTooltipWidget(
                            text: "Bottom tooltip is here",
                            customTooltipAlignment:
                                CustomTooltipAlignment.Bottom,
                            showTooltip: true,
                            child: const Text(
                                "hover over here for Bottom tooltip",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          CustomTooltipWidget(
                            text: "Top tooltip is here",
                            customTooltipAlignment: CustomTooltipAlignment.Top,
                            showTooltip: true,
                            child: const Text("hover over here for Top tooltip",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          CustomTooltipWidget(
                            text: "Left tooltip is here",
                            customTooltipAlignment: CustomTooltipAlignment.Left,
                            showTooltip: true,
                            child: const Text(
                                "hover over here for Left tooltip",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          CustomTooltipWidget(
                            text: "tooltip is here",
                            customTooltipAlignment:
                                CustomTooltipAlignment.Right,
                            showTooltip: true,
                            child: const Text(
                                "hover over here for Right tooltip",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                      // const Tooltip(
                      //   message: "tooltip is here ",
                      //   padding: EdgeInsets.only(
                      //       top: 8, bottom: 8, left: 16, right: 16),
                      //   verticalOffset: 10,
                      //   decoration: ShapeDecoration(
                      //     shape: CustomTooltipWidget(),
                      //     color: Colors.black,
                      //   ),
                      //   child: Text("hover over here"),
                      // ),
                      ),
                ])));
  }
}
