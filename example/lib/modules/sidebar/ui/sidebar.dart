import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter_example/modules/routes/app_pages.dart';
import 'package:common_jds_flutter_example/modules/sidebar/data/model/sidebar_menu_model.dart';
import 'package:common_jds_flutter_example/modules/sidebar/ui/sidebar_menu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key, required this.state}) : super(key: key);
  final GoRouterState state;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        padding:
            const EdgeInsets.symmetric(vertical: 64, horizontal: Dimens.size16),
        child: Column(
          children: [
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomText',
                    isSelected: state.fullPath == AppRoutes.CUSTOM_TEXT_PAGE,
                    pathName: AppRoutes.CUSTOM_TEXT_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CircleAvatarText',
                    isSelected: state.fullPath == AppRoutes.AVATAR_PAGE,
                    pathName: AppRoutes.AVATAR_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomButton.primary',
                    isSelected: state.fullPath == AppRoutes.PRIMARY_BUTTON_PAGE,
                    pathName: AppRoutes.PRIMARY_BUTTON_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomButton',
                    isSelected: state.fullPath == AppRoutes.BUTTON_PAGE,
                    pathName: AppRoutes.BUTTON_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomButtonWithDropdownPage',
                    isSelected: state.fullPath == AppRoutes.BUTTON_WITH_DROPDOWN_PAGE,
                    pathName: AppRoutes.BUTTON_WITH_DROPDOWN_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomCheckbox',
                    isSelected: state.fullPath == AppRoutes.CHECKBOX_PAGE,
                    pathName: AppRoutes.CHECKBOX_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomUnderlineTextFieldWithLabel',
                    isSelected: state.fullPath == AppRoutes.TEXTFIELD_PAGE,
                    pathName: AppRoutes.TEXTFIELD_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'AddTagsField',
                    isSelected: state.fullPath == AppRoutes.ADD_TAGS_FIELD,
                    pathName: AppRoutes.ADD_TAGS_FIELD)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomChipWidget',
                    isSelected: state.fullPath == AppRoutes.CHIP_PAGE,
                    pathName: AppRoutes.CHIP_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'SingleSelectDropdown',
                    isSelected: state.fullPath == AppRoutes.DROPDOWN_PAGE,
                    pathName: AppRoutes.DROPDOWN_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'SingleSelectSearchDropdown',
                    isSelected:
                        state.fullPath == AppRoutes.SINGLE_SEARCH_DROPDOWN_PAGE,
                    pathName: AppRoutes.SINGLE_SEARCH_DROPDOWN_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'MultiSelectDropdown',
                    isSelected: state.fullPath == AppRoutes.MULTI_DROPDOWN_PAGE,
                    pathName: AppRoutes.MULTI_DROPDOWN_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'MultiSelectSearchDropdown',
                    isSelected:
                        state.fullPath == AppRoutes.MULTI_SEARCH_DROPDOWN_PAGE,
                    pathName: AppRoutes.MULTI_SEARCH_DROPDOWN_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomRadioButton',
                    isSelected: state.fullPath == AppRoutes.RADIO_BUTTON_PAGE,
                    pathName: AppRoutes.RADIO_BUTTON_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'SearchField',
                    isSelected: state.fullPath == AppRoutes.SEARCH_FIELD_PAGE,
                    pathName: AppRoutes.SEARCH_FIELD_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'SearchFieldWithSuggestions',
                    isSelected: state.fullPath ==
                        AppRoutes.SEARCH_FIELD_WITH_SUGGESTIONS_PAGE,
                    pathName: AppRoutes.SEARCH_FIELD_WITH_SUGGESTIONS_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'ActionDropDown',
                    isSelected:
                        state.fullPath == AppRoutes.ACTION_DROPDOWN_PAGE,
                    pathName: AppRoutes.ACTION_DROPDOWN_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomAppBar',
                    isSelected: state.fullPath == AppRoutes.APP_BAR,
                    pathName: AppRoutes.APP_BAR)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'ActionBar',
                    isSelected: state.fullPath == AppRoutes.ACTION_BAR,
                    pathName: AppRoutes.ACTION_BAR)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomSwitch',
                    isSelected: state.fullPath == AppRoutes.SWITCH,
                    pathName: AppRoutes.SWITCH)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'PaginationWidget',
                    isSelected: state.fullPath == AppRoutes.PAGINATION,
                    pathName: AppRoutes.PAGINATION)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomDialog',
                    isSelected: state.fullPath == AppRoutes.DIALOG,
                    pathName: AppRoutes.DIALOG)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomTable',
                    isSelected: state.fullPath == AppRoutes.TABLE,
                    pathName: AppRoutes.TABLE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'OverlayDrawer',
                    isSelected: state.fullPath == AppRoutes.OVERLAYDRAWER,
                    pathName: AppRoutes.OVERLAYDRAWER)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CustomToolTip',
                    isSelected: state.fullPath == AppRoutes.TOOLTIP_PAGE,
                    pathName: AppRoutes.TOOLTIP_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'ToastMsgWidget',
                    isSelected: state.fullPath == AppRoutes.TOAST_PAGE,
                    pathName: AppRoutes.TOAST_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'DateRangeWidget',
                    isSelected: state.fullPath == AppRoutes.CALENDAR_PAGE,
                    pathName: AppRoutes.CALENDAR_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'SingleDatePicker',
                    isSelected: state.fullPath ==
                        AppRoutes.SINGLE_DATE_PICKER_DROPDOWN_PAGE,
                    pathName: AppRoutes.SINGLE_DATE_PICKER_DROPDOWN_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'CupertinoLoader',
                    isSelected: state.fullPath == AppRoutes.LOADER_PAGE,
                    pathName: AppRoutes.LOADER_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'RoundedRectangleWidget',
                    isSelected:
                        state.fullPath == AppRoutes.ROUNDED_RECTANGLE_PAGE,
                    pathName: AppRoutes.ROUNDED_RECTANGLE_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'ImageDialogWidget',
                    isSelected: state.fullPath == AppRoutes.IMAGE_DIALOG_PAGE,
                    pathName: AppRoutes.IMAGE_DIALOG_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'TimePickerWidget',
                    isSelected: state.fullPath == AppRoutes.TIME_PICKER_PAGE,
                    pathName: AppRoutes.TIME_PICKER_PAGE)),
            SidebarMenu(
                menu: SidebarMenuModel(
                    name: 'ImageViewerWidget',
                    isSelected: state.fullPath == AppRoutes.IMAGE_VIEWER_PAGE,
                    pathName: AppRoutes.IMAGE_VIEWER_PAGE)),
          ],
        ),
      ),
    );
  }
}
