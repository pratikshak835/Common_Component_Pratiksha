import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/app_bar/app_bar_widget.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import 'package:common_jds_flutter_example/modules/app_bar/data/app_bar_widget_properties.dart';
import 'package:flutter/material.dart';

class AppBarWidgetPage extends StatefulWidget {
  const AppBarWidgetPage({Key? key}) : super(key: key);

  @override
  State<AppBarWidgetPage> createState() => _AppBarWidgetPageState();
}

class _AppBarWidgetPageState extends State<AppBarWidgetPage> {
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
                    title: AppBarWidgetProperties.pageDetail.title,
                    description: AppBarWidgetProperties.pageDetail.description,
                    code: AppBarWidgetProperties.pageDetail.code ?? '',
                    classPropertiesData:
                        AppBarWidgetProperties.classPropertiesData,
                    widget: CustomAppBar(
                      titleWidget: const CustomText(text: "AppBar"),
                      appBarHeight: 72,
                      leadingWidth: 40,
                      centerTitle: true,
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ])));
  }
}
