import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';
import 'package:common_jds_flutter/widgets/dropdown/model/dropdownitem.dart';
import 'package:common_jds_flutter/widgets/hover/hover_widget.dart';
import 'package:flutter/material.dart';

class ActionDropDown extends StatelessWidget {
  final List<DropdownItem> items;
  final Function onTap;
  final Widget? customWidget;
  final Color? textColor;
  Offset? offSet = const Offset(0, 45);
  double? width = 80;
  BoxConstraints? constraints;
  void Function()? onOpened;
  void Function()? onClosed;

  ActionDropDown({
    required this.items,
    required this.onTap,
    required this.customWidget,
    this.offSet,
    this.textColor = AppColors.black,
    this.width,
    this.constraints,
    this.onOpened,
    this.onClosed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<DropdownItem>(
        padding: EdgeInsets.zero,
        tooltip: "",
        offset: offSet ?? const Offset(0, 45),
        constraints: constraints,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        onOpened: onOpened,
        onCanceled: onClosed,
        itemBuilder: (context) {
          return items.map((item) {
            return PopupMenuItem(
                padding: EdgeInsets.zero,
                height: 40,
                value: item,
                onTap: () {
                  onTap(item.id);
                },
                child: OnHover(builder: (isHovered) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: isHovered ? AppColors.FFF5F5F5 : null,
                    ),
                    height: 40,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(width: 14),
                        item.prefixIcon ?? const SizedBox.shrink(),
                        item.prefixIcon != null
                            ? const SizedBox(
                                width: 5,
                              )
                            : const SizedBox.shrink(),
                        Expanded(
                          child: CustomText(
                            text: item.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            size: 16,
                            fontWeight: CustomFontWeight.regular,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(width: 14),
                      ],
                    ),
                  );
                }));
          }).toList();
        },
        child: customWidget);
  }
}
