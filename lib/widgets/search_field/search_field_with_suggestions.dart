import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/util/debouncer.dart';
import 'package:flutter/material.dart';

class SearchFieldWithSuggestions extends StatefulWidget {
  const SearchFieldWithSuggestions(
      {this.onChanged,
      this.onSubmit,
      required this.controller,
      this.onCloseClick,
      this.hintText = "Search",
      this.borderColor = AppColors.FFE8E8E8,
      this.overlayColor = AppColors.white,
      required this.searchBoxWidth,
      this.textStyle,
      this.searchBoxUnFocusedWidth,
      this.cursorColor = AppColors.black,
      this.isAnimationEnabled = false,
      this.borderRadius = 8.0,
      this.overlayHeight = 300.0,
      this.child,
      this.hintStyle = const TextStyle(fontWeight: FontWeight.normal),
      Key? key})
      : super(key: key);
  final TextEditingController controller;
  final Function? onChanged;
  final Function? onSubmit;
  final Function? onCloseClick;
  final Color borderColor;
  final Color overlayColor;
  final String? hintText;
  final double searchBoxWidth;
  final double? searchBoxUnFocusedWidth;
  final double borderRadius;
  final double overlayHeight;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool isAnimationEnabled;
  final Color? cursorColor;
  final Widget? child;

  @override
  State<SearchFieldWithSuggestions> createState() =>
      _SearchFieldWithSuggestionsState();
}

class _SearchFieldWithSuggestionsState
    extends State<SearchFieldWithSuggestions> {
  FocusNode focusNode = FocusNode();
  final deBouncer = Debouncer(milliseconds: 200);
  OverlayEntry? _overlayEntry;
  final LayerLink layerLink = LayerLink();

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _showOverlay() {
    final overlay = Overlay.of(context);
    _overlayEntry?.remove();
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          width: widget.searchBoxWidth,
          child: CompositedTransformFollower(
            link: layerLink,
            followerAnchor: Alignment.topCenter,
            targetAnchor: Alignment.bottomCenter,
            offset: const Offset(0, 8),
            showWhenUnlinked: false,
            child: SuggestionsOverlay(
              borderRadius: widget.borderRadius,
              overlayColor: widget.overlayColor,
              overlayHeight: widget.overlayHeight,
              child: widget.child,
            ),
          ),
        );
      },
    );
    overlay?.insert(_overlayEntry!);
  }

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      if (focusNode.hasFocus && widget.controller.text.isNotEmpty) {
        if (_overlayEntry?.mounted ?? false) return;
        _showOverlay();
      } else {
        _removeOverlay();
      }
    });
    focusNode.addListener(() {
      deBouncer.run(() {
        setState(() {});
        if (focusNode.hasFocus && widget.controller.text.isNotEmpty) {
          Future.delayed(
              Duration(milliseconds: widget.isAnimationEnabled ? 300 : 0), () {
            if (_overlayEntry?.mounted ?? false) return;
            _showOverlay();
          });
        } else {
          _removeOverlay();
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.removeListener(() {});
    focusNode.dispose();
    _removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: Column(
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
      ),
    );
  }
}

class SuggestionsOverlay extends StatefulWidget {
  final double borderRadius;
  final double overlayHeight;
  final Color overlayColor;
  final Widget? child;

  const SuggestionsOverlay(
      {this.borderRadius = 8.0,
      this.overlayColor = AppColors.white,
      this.overlayHeight = 300.0,
      this.child,
      super.key});

  @override
  State<SuggestionsOverlay> createState() => _SuggestionsOverlayState();
}

class _SuggestionsOverlayState extends State<SuggestionsOverlay> {
  bool _showOverlay = false;
  double height = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _showOverlay = !_showOverlay;
      height = _showOverlay ? widget.overlayHeight : 0.0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: height,
      decoration: BoxDecoration(
          color: widget.overlayColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Colors.black.withOpacity(0.10),
              blurRadius: 15.0,
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius))),
      duration: const Duration(milliseconds: 300),
      child: widget.child,
    );
  }
}
