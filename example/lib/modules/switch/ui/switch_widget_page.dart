import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/switch/primary_switch_widget.dart';
import 'package:common_jds_flutter/widgets/switch/secondary_switch_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/switch/data/primary_switch_widget_properties.dart';
import 'package:common_jds_flutter_example/modules/switch/data/secondary_switch_widget_properties.dart';
import 'package:flutter/material.dart';

class PrimarySwitchWidgetPage extends StatefulWidget {
  const PrimarySwitchWidgetPage({Key? key}) : super(key: key);

  @override
  State<PrimarySwitchWidgetPage> createState() =>
      _PrimarySwitchWidgetPageState();
}

class _PrimarySwitchWidgetPageState extends State<PrimarySwitchWidgetPage> {
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
                    title: PrimarySwitchWidgetProperties.pageDetail.title,
                    description:
                        PrimarySwitchWidgetProperties.pageDetail.description,
                    code: PrimarySwitchWidgetProperties.pageDetail.code ?? '',
                    classPropertiesData:
                        PrimarySwitchWidgetProperties.classPropertiesData,
                    widget: PrimarySwitch(value: true, onChanged: (value) {}),
                  ),
                  const SizedBox(height: 20),
                  WidgetStory(
                    title: SecondarySwitchWidgetProperties.pageDetail.title,
                    description:
                        SecondarySwitchWidgetProperties.pageDetail.description,
                    code: SecondarySwitchWidgetProperties.pageDetail.code ?? '',
                    classPropertiesData:
                        SecondarySwitchWidgetProperties.classPropertiesData,
                    widget: SecondarySwitch(
                      value: true,
                      onClick: (bool value) {
                        debugPrint("Value = $value");
                      },
                    ),
                  ),
                ])));
  }
}
