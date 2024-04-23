import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/button/button_widget.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/dialog/dialog_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/dialog/data/dialog_widget_properties.dart';
import 'package:flutter/material.dart';

class CustomDialogWidgetPage extends StatefulWidget {
  const CustomDialogWidgetPage({Key? key}) : super(key: key);

  @override
  State<CustomDialogWidgetPage> createState() => _CustomDialogWidgetPageState();
}

class _CustomDialogWidgetPageState extends State<CustomDialogWidgetPage> {
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
                    title: DialogWidgetProperties.pageDetail.title,
                    description: DialogWidgetProperties.pageDetail.description,
                    code: DialogWidgetProperties.pageDetail.code ?? '',
                    classPropertiesData:
                        DialogWidgetProperties.classPropertiesData,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomButton.primary(
                          onClick: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return CustomDialog(
                                  contentPadding: 32,
                                  radius: 20,
                                  title: "This is dialog title.",
                                  body: const Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 36),
                                    child: CustomText(
                                      text:
                                          "This is dialog body.\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                      maxLines: 5,
                                    ),
                                  ),
                                  showBtn1: true,
                                  showBtn2: true,
                                  showBtn3: true,
                                  onClose: () {
                                    Navigator.pop(context);
                                  },
                                  onBtn1Tap: () {
                                    Navigator.pop(context);
                                  },
                                  onBtn2Tap: () {
                                    Navigator.pop(context);
                                  },
                                  onBtn3Tap: () {
                                    Navigator.pop(context);
                                  },
                                );
                              },
                            );
                          },
                          buttonText: "Click to show dialog",
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        CustomDialog(
                          alignment: Alignment.centerLeft,
                          contentPadding: 32,
                          radius: 20,
                          title: "This is dialog title.",
                          body: const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 36),
                            child: CustomText(
                              text:
                                  "This is dialog body.\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              maxLines: 5,
                            ),
                          ),
                          showBtn1: true,
                          showBtn2: true,
                          showBtn3: true,
                          onClose: () {},
                        ),
                      ],
                    ),
                  ),
                ])));
  }
}
