import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/common/util/global_keys.dart';
import 'package:common_jds_flutter/widgets/button/button_widget.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/overlay/overlay_drawer_widget.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/overlay/data/overlay_drawer_widget_properties.dart';
import 'package:flutter/material.dart';

class OverlayDrawerWidgetPage extends StatefulWidget {
  const OverlayDrawerWidgetPage({Key? key}) : super(key: key);

  @override
  State<OverlayDrawerWidgetPage> createState() =>
      _OverlayDrawerWidgetPageState();
}

class _OverlayDrawerWidgetPageState extends State<OverlayDrawerWidgetPage> {
  OverlayEntry? overlayEntry;

  showOverlay({
    required BuildContext context,
    required Widget overlay,
  }) async {
    final OverlayState overlayState = Overlay.of(context);

    overlayEntry = OverlayEntry(builder: (context) {
      return overlay;
    });

    overlayState.insert(overlayEntry!);
  }

  void removeOverlay() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    final BuildContext? commonBackgroundContext =
        commonBackgroundKey.currentContext;

    return SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: Dimens.size64, horizontal: Dimens.size32),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  WidgetStory(
                    title: OverlayDrawerWidgetProperties.pageDetail.title,
                    description:
                        OverlayDrawerWidgetProperties.pageDetail.description,
                    code: OverlayDrawerWidgetProperties.pageDetail.code ?? '',
                    classPropertiesData:
                        OverlayDrawerWidgetProperties.classPropertiesData,
                    widget: CustomButton.primary(
                      onClick: () {
                        showOverlay(
                          context: commonBackgroundContext ?? context,
                          overlay: OverlayDrawer(
                            top: 0,
                            right: 0,
                            height: MediaQuery.sizeOf(context).height,
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            onCloseIconTap: () {
                              removeOverlay();
                            },
                            title: "Overlay Title",
                            body: Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: List.generate(
                                    12,
                                    (index) => const Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 8.0,
                                        horizontal: 32,
                                      ),
                                      child: CustomText(
                                        text:
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                        maxLines: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            footer: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomButton(
                                  onClick: () {
                                    removeOverlay();
                                  },
                                  buttonText: "Cancel",
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                CustomButton.primary(
                                  onClick: () {
                                    removeOverlay();
                                  },
                                  buttonText: "Delete",
                                ),
                              ],
                            ),
                            footerBackgroundColor:
                                AppColors.kPrimaryColor.withOpacity(0.1),
                          ),
                        );
                      },
                      buttonText: "Click to show overlay",
                    ),
                  ),
                ])));
  }
}
