import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/common/util/global_keys.dart';
import 'package:common_jds_flutter/widgets/app_bar/app_bar_widget.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter_example/common/strings.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter_example/common/strings.dart';
import 'package:common_jds_flutter_example/modules/main_layout/ui/common_background.dart';
import 'package:common_jds_flutter_example/modules/sidebar/ui/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({Key? key, this.child, required this.state})
      : super(key: key);
  final Widget? child;
  final GoRouterState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleWidget: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.0),
          child: CustomText(
              text: Strings.appTitle,
              fontWeight: CustomFontWeight.black,
              size: Dimens.size16),
        ),
        centerTitle: false,
        backgroundColor: Theme.of(context).primaryColor,
        addBackButton: true,
      ),
      body: SelectionArea(
        child: Row(
          children: [
            Sidebar(state: state),
            // const SizedBox(width: 20),
            Expanded(
              child: CommonBackground(
                key: commonBackgroundKey,
                child: child!,
              ),
            )
          ],
        ),
      ),
    );
  }
}
