import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/action_dropdown/action_dropdown.dart';
import 'package:common_jds_flutter/widgets/button/button_with_dropdown.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:flutter/material.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter_example/common/widget_story_ui.dart';
import '../data/widget_properties.dart';

class CustomButtonWithDropdownPage extends StatelessWidget {
  const CustomButtonWithDropdownPage({Key? key}) : super(key: key);

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
              widget: CustomButtonWithDropdown(
                padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                icon: const Icon(Icons.construction,
                    color: AppColors.white,
                    size: 22),
                hoveredIcon: const Icon(Icons.construction,
                    color: AppColors.FFA7F6E9,
                    size: 22),
                secondChildColor: AppColors.kPrimaryColor,
                hoverColor: AppColors.FF155651,
                hoverTextColor: AppColors.FFA7F6E9,
                label: "New Article",
                onTap1: () {

                },
                height: 40,
                secondChild: ActionDropDown(
                  customWidget: Padding(
                    padding: const EdgeInsets.only(
                        right: 12.0, left: 4.0, top: 8.0, bottom: 8.0),
                    child: OnHover(
                      builder: (isHovered) {
                        return Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: isHovered ? AppColors.FFA7F6E9 : AppColors.white,
                        );
                      },
                    ),
                  ),
                  items: [
                    DropdownItem(
                      id: '12',
                        description: 'New Folder', prefixIcon: const Icon(Icons.add), isChecked: false),
                    DropdownItem(
                        id: '123',
                        description: 'New Category', prefixIcon: const Icon(Icons.add), isChecked: false),
                  ],
                  onTap: (String actionType) {
                    if (actionType == "New Folder") {
                    }else if(actionType=="New Category"){
                    }
                  },
                  onOpened: (){
                  },
                  onClosed: (){
                  },
                ),
              ),
              classPropertiesData: WidgetProperties.classPropertiesData,
            ),
          ]
        )
      )
    );
  }
}