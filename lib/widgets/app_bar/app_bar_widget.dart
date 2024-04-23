import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final Color? backgroundColor, backButtonColor;
  final List<Widget>? actions;
  final Function()? onBackPress, onAppBarTap, openDrawer;
  final IconThemeData actionsIconTheme;
  final double appBarHeight;
  final Widget? titleWidget, leading, bottom;
  final double leadingWidth;
  final double bottomHeight;
  final bool addBackButton;
  final bool? centerTitle;
  final bool primary;

  CustomAppBar({
    Key? key,
    this.titleWidget,
    this.appBarHeight = kToolbarHeight,
    this.leading,
    this.leadingWidth = 24,
    this.addBackButton = false,
    this.onBackPress,
    this.backgroundColor = const Color(0xFF1E7B74),
    this.backButtonColor = Colors.white,
    this.actions,
    this.actionsIconTheme = const IconThemeData(
      size: 20,
    ),
    this.bottom,
    this.bottomHeight = 100,
    this.centerTitle,
    this.onAppBarTap,
    this.openDrawer,
    this.primary = true,
  }) : super(
          key: key,
          child: const SizedBox.shrink(),
          preferredSize: Size.fromHeight(bottom == null ? appBarHeight : 98),
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onAppBarTap,
      child: AppBar(
          centerTitle: centerTitle,
          elevation: 0,
          actions: actions ?? [Container()],
          titleSpacing: 0.0,
          actionsIconTheme: actionsIconTheme,
          primary: primary,
          bottom: bottom == null
              ? null
              : PreferredSize(
                  preferredSize: Size.fromHeight(bottomHeight),
                  child: bottom!,
                ),
          leading: addBackButton
              ? null
              : IconButton(
                  onPressed: openDrawer,
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
          leadingWidth: leadingWidth,
          backgroundColor: backgroundColor,
          title: titleWidget ?? const SizedBox.shrink()),
    );
  }
}
