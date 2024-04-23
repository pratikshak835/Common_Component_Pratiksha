import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/button/button_widget.dart';
import 'package:common_jds_flutter/widgets/toast/toast_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/Toast/data/toast-widget-properties.dart';
import 'package:flutter/material.dart';

class ToastWidgetPage extends StatefulWidget {
  const ToastWidgetPage({Key? key}) : super(key: key);

  @override
  State<ToastWidgetPage> createState() => _ToastWidgetPageState();
}

class _ToastWidgetPageState extends State<ToastWidgetPage> {
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
                      title: ToastWidgetProperties.pageDetail.title,
                      description: ToastWidgetProperties.pageDetail.description,
                      code: ToastWidgetProperties.pageDetail.code ?? '',
                      classPropertiesData:
                          ToastWidgetProperties.classPropertiesData,
                      widget: CustomButton(
                        buttonText: 'Submit',
                        onClick: () {
                          showCustomSnackbar(
                            context: context,
                            message: 'This is a toast message',
                            margin: const EdgeInsets.only(right: 800),
                            backgroundColor: Colors.grey,
                            onCloseTap: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                            },
                          );
                        },
                      )),
                ])));
  }
}
