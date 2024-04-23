import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  String? imageUrl;
  String? svgImagePath;
  String? assetImagePath;
  File? file;
  Uint8List? bytes;
  final double height;
  final double width;
  final BoxFit? fit;
  final Color? color;
  final double scale;
  final FilterQuality filterQuality;
  final String? semanticLabel;
  String? package;
  ImageErrorWidgetBuilder? errorBuilder;
  ImageLoadingBuilder? loadingBuilder;
  ImageFrameBuilder? frameBuilder;
  final BlendMode? colorBlendMode;
  final AlignmentGeometry alignment;
  final bool matchTextDirection;
  final bool gaplessPlayback;
  final bool isAntiAlias;
  final bool excludeFromSemantics;
  ImageRepeat repeat;
  Rect? centerSlice;
  Animation<double>? opacity;
  AssetBundle? bundle;
  Map<String, String>? headers;
  ColorFilter? colorFilter;
  BlendMode? blendMode;
  WidgetBuilder? placeholderBuilder;
  Clip? clipBehavior;
  bool? allowDrawingOutsideViewBox;

  ImageViewer.asset(
      {super.key,
      required this.assetImagePath,
      this.height = 100,
      this.width = 100,
      this.fit,
      this.color,
      this.scale = 1.0,
      this.filterQuality = FilterQuality.low,
      this.semanticLabel,
      this.errorBuilder,
      this.loadingBuilder,
      this.frameBuilder,
      this.colorBlendMode,
      this.alignment = Alignment.center,
      this.matchTextDirection = false,
      this.gaplessPlayback = false,
      this.isAntiAlias = false,
      this.excludeFromSemantics = false,
      this.repeat = ImageRepeat.noRepeat,
      this.centerSlice,
      this.opacity,
      this.bundle,
      this.package});

  ImageViewer.network(
      {super.key,
      required this.imageUrl,
      this.height = 100,
      this.width = 100,
      this.fit,
      this.color,
      this.scale = 1.0,
      this.filterQuality = FilterQuality.low,
      this.semanticLabel,
      this.errorBuilder,
      this.loadingBuilder,
      this.frameBuilder,
      this.colorBlendMode,
      this.alignment = Alignment.center,
      this.matchTextDirection = false,
      this.gaplessPlayback = false,
      this.isAntiAlias = false,
      this.excludeFromSemantics = false,
      this.repeat = ImageRepeat.noRepeat,
      this.centerSlice,
      this.opacity,
      this.headers});

  ImageViewer.memory({
    super.key,
    required this.bytes,
    this.height = 100,
    this.width = 100,
    this.fit,
    this.color,
    this.scale = 1.0,
    this.filterQuality = FilterQuality.low,
    this.semanticLabel,
    this.errorBuilder,
    this.loadingBuilder,
    this.frameBuilder,
    this.colorBlendMode,
    this.alignment = Alignment.center,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.isAntiAlias = false,
    this.excludeFromSemantics = false,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.opacity,
    this.bundle,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return NetworkImageBuilder(
        imageUrl: imageUrl,
        height: height,
        width: width,
        key: key,
        scale: scale,
        loadingBuilder: loadingBuilder,
        semanticLabel: semanticLabel,
        filterQuality: filterQuality,
        fit: fit,
        color: color,
        repeat: repeat,
        excludeFromSemantics: excludeFromSemantics,
        centerSlice: centerSlice,
        gaplessPlayback: gaplessPlayback,
        isAntiAlias: isAntiAlias,
        alignment: alignment,
        colorBlendMode: colorBlendMode,
        frameBuilder: frameBuilder,
        errorBuilder: errorBuilder,
        opacity: opacity,
        matchTextDirection: matchTextDirection,
        headers: headers,
      );
    } else if (assetImagePath != null) {
      return AssetImageBuilder(
        assetImagePath: assetImagePath,
        height: height,
        width: width,
        opacity: opacity,
        errorBuilder: errorBuilder,
        frameBuilder: frameBuilder,
        colorBlendMode: colorBlendMode,
        alignment: alignment,
        matchTextDirection: matchTextDirection,
        isAntiAlias: isAntiAlias,
        gaplessPlayback: gaplessPlayback,
        centerSlice: centerSlice,
        excludeFromSemantics: excludeFromSemantics,
        repeat: repeat,
        bundle: bundle,
        color: color,
        fit: fit,
        filterQuality: filterQuality,
        semanticLabel: semanticLabel,
        key: key,
        loadingBuilder: loadingBuilder,
        scale: scale,
        package: package,
      );
    } else if (bytes != null) {
      return ImageBuilderFromMemory(
        bytes: bytes!,
        height: height,
        width: width,
        scale: scale,
        loadingBuilder: loadingBuilder,
        filterQuality: filterQuality,
        repeat: repeat,
        centerSlice: centerSlice,
        gaplessPlayback: gaplessPlayback,
        isAntiAlias: isAntiAlias,
        frameBuilder: frameBuilder,
        errorBuilder: errorBuilder,
        opacity: opacity,
        bundle: bundle,
        colorBlendMode: colorBlendMode,
        fit: fit,
        matchTextDirection: matchTextDirection,
        alignment: alignment,
        excludeFromSemantics: excludeFromSemantics,
        color: color,
        semanticLabel: semanticLabel,
        key: key,
      );
    } else {
      return Container(); // Or any default widget for no image case
    }
  }
}

class AssetImageBuilder extends StatelessWidget {
  final String? assetImagePath;
  final double height;
  final double width;
  final BoxFit? fit;
  final Color? color;
  final double scale;
  final FilterQuality filterQuality;
  final String? semanticLabel;
  final ImageErrorWidgetBuilder? errorBuilder;
  final ImageLoadingBuilder? loadingBuilder;
  final ImageFrameBuilder? frameBuilder;
  final BlendMode? colorBlendMode;
  final AlignmentGeometry alignment;
  final bool matchTextDirection;
  final bool gaplessPlayback;
  final bool isAntiAlias;
  final bool excludeFromSemantics;
  final ImageRepeat repeat;
  final Rect? centerSlice;
  final Animation<double>? opacity;
  final AssetBundle? bundle;
  final String? package;

  const AssetImageBuilder({
    super.key,
    required this.assetImagePath,
    required this.height,
    required this.width,
    this.fit,
    this.color,
    this.scale = 1.0,
    this.filterQuality = FilterQuality.low,
    this.semanticLabel,
    this.errorBuilder,
    this.loadingBuilder,
    this.frameBuilder,
    this.colorBlendMode,
    this.alignment = Alignment.center,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.isAntiAlias = false,
    this.excludeFromSemantics = false,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.opacity,
    this.bundle,
    this.package,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetImagePath ?? "",
      height: height,
      width: width,
      scale: scale,
      semanticLabel: semanticLabel,
      filterQuality: filterQuality,
      fit: fit,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder ??
          (context, error, stackTrace) {
            return const Center(
              child: Icon(
                Icons.broken_image_rounded,
                size: 20,
              ),
            );
          },
      color: color,
      colorBlendMode: colorBlendMode,
      alignment: alignment,
      matchTextDirection: matchTextDirection,
      isAntiAlias: isAntiAlias,
      gaplessPlayback: gaplessPlayback,
      excludeFromSemantics: excludeFromSemantics,
      centerSlice: centerSlice,
      repeat: repeat,
      opacity: opacity,
      key: key,
      bundle: bundle,
      package: package,
    );
  }
}

class NetworkImageBuilder extends StatelessWidget {
  final String? imageUrl;
  final double height;
  final double width;
  final BoxFit? fit;
  final Color? color;
  final double scale;
  final FilterQuality filterQuality;
  final String? semanticLabel;
  final ImageErrorWidgetBuilder? errorBuilder;
  final ImageLoadingBuilder? loadingBuilder;
  final ImageFrameBuilder? frameBuilder;
  final BlendMode? colorBlendMode;
  final AlignmentGeometry alignment;
  final Map<String, String>? headers;
  final bool matchTextDirection;
  final bool gaplessPlayback;
  final bool isAntiAlias;
  final bool excludeFromSemantics;
  final ImageRepeat repeat;
  final Rect? centerSlice;
  final Animation<double>? opacity;

  const NetworkImageBuilder(
      {super.key,
      required this.imageUrl,
      required this.height,
      required this.width,
      this.fit,
      this.color,
      this.scale = 1.0,
      this.filterQuality = FilterQuality.low,
      this.semanticLabel,
      this.errorBuilder,
      this.loadingBuilder,
      this.frameBuilder,
      this.colorBlendMode,
      this.headers,
      this.alignment = Alignment.center,
      this.matchTextDirection = false,
      this.gaplessPlayback = false,
      this.isAntiAlias = false,
      this.excludeFromSemantics = false,
      this.repeat = ImageRepeat.noRepeat,
      this.centerSlice,
      this.opacity});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl ?? "",
      width: width,
      height: height,
      loadingBuilder: loadingBuilder ??
          (context, child, progress) {
            return progress == null ? child : const CircularProgressIndicator();
          },
      errorBuilder: errorBuilder ??
          (context, error, stackTrace) {
            return const Center(
              child: Icon(
                Icons.broken_image_rounded,
                size: 20,
              ),
            );
          },
      scale: scale,
      fit: fit,
      semanticLabel: semanticLabel,
      color: color,
      filterQuality: filterQuality,
      headers: headers,
      opacity: opacity,
      repeat: repeat,
      excludeFromSemantics: excludeFromSemantics,
      centerSlice: centerSlice,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      matchTextDirection: matchTextDirection,
      frameBuilder: frameBuilder,
      alignment: alignment,
      colorBlendMode: colorBlendMode,
      key: key,
    );
  }
}

class ImageBuilderFromMemory extends StatelessWidget {
  final Uint8List bytes;
  final double height;
  final double width;
  final BoxFit? fit;
  final Color? color;
  final double scale;
  final FilterQuality filterQuality;
  final String? semanticLabel;
  final ImageErrorWidgetBuilder? errorBuilder;
  final ImageLoadingBuilder? loadingBuilder;
  final ImageFrameBuilder? frameBuilder;
  final BlendMode? colorBlendMode;
  final AlignmentGeometry alignment;
  final bool matchTextDirection;
  final bool gaplessPlayback;
  final bool isAntiAlias;
  final bool excludeFromSemantics;
  final ImageRepeat repeat;
  final Rect? centerSlice;
  final Animation<double>? opacity;
  final AssetBundle? bundle;

  const ImageBuilderFromMemory({
    super.key,
    required this.bytes,
    required this.height,
    required this.width,
    this.fit,
    this.color,
    this.scale = 1.0,
    this.filterQuality = FilterQuality.low,
    this.semanticLabel,
    this.errorBuilder,
    this.loadingBuilder,
    this.frameBuilder,
    this.colorBlendMode,
    this.alignment = Alignment.center,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.isAntiAlias = false,
    this.excludeFromSemantics = false,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.opacity,
    this.bundle,
  });

  @override
  Widget build(BuildContext context) {
    return Image.memory(
      bytes,
      height: height,
      width: width,
      scale: scale,
      semanticLabel: semanticLabel,
      filterQuality: filterQuality,
      fit: fit,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder ??
          (context, error, stackTrace) {
            return const Center(
              child: Icon(
                Icons.broken_image_rounded,
                size: 20,
              ),
            );
          },
      color: color,
      colorBlendMode: colorBlendMode,
      alignment: alignment,
      matchTextDirection: matchTextDirection,
      isAntiAlias: isAntiAlias,
      gaplessPlayback: gaplessPlayback,
      excludeFromSemantics: excludeFromSemantics,
      centerSlice: centerSlice,
      repeat: repeat,
      opacity: opacity,
      key: key,
    );
  }
}
