import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/util/debouncer.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField(
      {this.onChanged,
      this.onSubmit,
      required this.controller,
      this.onCloseClick,
      this.hintText = "Search",
      this.borderColor = AppColors.FFE8E8E8,
      this.searchBoxWidth,
      this.textStyle,
      this.searchBoxUnFocusedWidth,
      this.cursorColor = AppColors.black,
      this.isAnimationEnabled = false,
      this.hintStyle = const TextStyle(fontWeight: FontWeight.normal),
      Key? key})
      : super(key: key);
  final TextEditingController controller;
  final Function? onChanged;
  final Function? onSubmit;
  final Function? onCloseClick;
  final Color borderColor;
  final String? hintText;
  final double? searchBoxWidth;
  final double? searchBoxUnFocusedWidth;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool? isAnimationEnabled;
  final Color? cursorColor;
  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  FocusNode focusNode = FocusNode();
  final deBouncer = Debouncer(milliseconds: 200);

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      deBouncer.run(() {
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.removeListener(() {});
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.isAnimationEnabled == true
            ? AnimatedContainer(
                width: focusNode.hasFocus
                    ? widget.searchBoxWidth
                    : widget.searchBoxUnFocusedWidth,
                height: 40,
                duration: const Duration(milliseconds: 300),
                child: TextField(
                  focusNode: focusNode,
                  style: widget.textStyle,
                  controller: widget.controller,
                  autofocus: false,
                  cursorColor: widget.cursorColor,
                  cursorHeight: 18,
                  cursorWidth: 1,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.name,
                  onChanged: (query) {
                    setState(() {});
                    widget.onChanged!(query);
                  },
                  onSubmitted: (query) {
                    if (widget.onSubmit != null) {
                      widget.onSubmit!(query);
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.FF404040,
                      size: 20,
                    ),
                    suffixIcon: widget.controller.text.isNotEmpty
                        ? InkWell(
                            hoverColor: Colors.transparent,
                            child: const Icon(
                              Icons.clear,
                              color: AppColors.FF404040,
                              size: 20,
                            ),
                            onTap: () {
                              setState(() {
                                widget.controller.clear();
                                widget.onCloseClick?.call();
                              });
                            },
                          )
                        : const SizedBox.shrink(),
                    hintText: widget.hintText,
                    fillColor: AppColors.FFF5F5F5,
                    hintStyle: widget.hintStyle,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.FFF5F5F5, width: 1),
                        borderRadius: BorderRadius.circular(25.0)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.FFF5F5F5, width: 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              )
            : SizedBox(
                width: widget.searchBoxWidth,
                height: 32,
                child: TextField(
                  focusNode: focusNode,
                  style: widget.textStyle,
                  controller: widget.controller,
                  autofocus: false,
                  cursorColor: widget.cursorColor,
                  cursorHeight: 18,
                  cursorWidth: 1,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.name,
                  onChanged: (query) {
                    setState(() {});
                    widget.onChanged!(query);
                  },
                  onSubmitted: (query) {
                    if (widget.onSubmit != null) {
                      widget.onSubmit!(query);
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: AppColors.FF404040,
                      size: 20,
                    ),
                    suffixIcon: widget.controller.text.isNotEmpty
                        ? InkWell(
                            hoverColor: Colors.transparent,
                            child: const Icon(
                              Icons.clear,
                              color: AppColors.FF404040,
                              size: 20,
                            ),
                            onTap: () {
                              setState(() {
                                widget.controller.clear();
                                widget.onCloseClick?.call();
                              });
                            },
                          )
                        : const SizedBox.shrink(),
                    hintText: widget.hintText,
                    fillColor: AppColors.FFF5F5F5,
                    hintStyle: widget.hintStyle,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.FFF5F5F5, width: 1),
                        borderRadius: BorderRadius.circular(25.0)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AppColors.FFF5F5F5, width: 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
