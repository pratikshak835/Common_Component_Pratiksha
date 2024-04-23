import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/extensions.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:common_jds_flutter_example/modules/sidebar/data/model/sidebar_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({Key? key, required this.menu}) : super(key: key);
  final SidebarMenuModel menu;

  @override
  Widget build(BuildContext context) {
    return OnHover(
      builder: (isHovered) {
        return InkWell(
          onTap: () {
            if (menu.pathName != null) {
              context.go(menu.pathName!);
            }
          },
          customBorder: RoundedRectangleBorder(
            borderRadius: 12.borderRadius,
          ),
          child: Container(
            height: 40,
            width: 270,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: Dimens.size32),
            decoration: BoxDecoration(
              color: menu.isSelected
                  ? AppColors.FFE5F1F7
                  : isHovered
                      ? AppColors.FFF5F5F6
                      : AppColors.white,
              borderRadius: 12.borderRadius,
            ),
            child: CustomText(
              text: menu.name,
              fontWeight: CustomFontWeight.medium,
              size: Dimens.size14,
              color: (menu.isSelected || isHovered)
                  ? AppColors.FF141414
                  : AppColors.A6000000,
            ),
          ),
        );
      },
    );
  }
}
