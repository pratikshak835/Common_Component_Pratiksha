import 'dart:typed_data';

import 'package:flutter/material.dart';

class ViewAttachementDialog extends StatelessWidget {
  const ViewAttachementDialog(
      {Key? key,
      this.imgUrl,
      this.onClose,
      this.myFileType = MyFileType.IMAGE,
      this.bytes,
      this.closeIcon})
      : super(key: key);

  final Function? onClose;
  final String? imgUrl;
  final MyFileType? myFileType;
  final Uint8List? bytes;
  final Widget? closeIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        if (myFileType == MyFileType.IMAGE)
          AttachementItem(
            onTap: () {},
            imageUrl: imgUrl,
            width: MediaQuery.of(context).size.width * 0.4,
            height: 400,
            // width: context.size!.width * 0.50,
            // height: context.size!.height / 1.5,
            bytes: bytes,
          ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              // splashColor: Colors.transparent,
              onTap: () {
                onClose?.call();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: closeIcon ??
                    const Icon(
                      Icons.cancel,
                      size: 34,
                      color: Colors.white,
                    ),
              )),
        ),
      ],
    );
  }
}

enum MyFileType { IMAGE, PDF }

class AttachementItem extends StatelessWidget {
  const AttachementItem(
      {Key? key,
      this.height,
      this.width,
      this.onTap,
      this.imageUrl,
      this.bytes})
      : super(key: key);

  final String? imageUrl;
  final double? height;
  final double? width;
  final Function? onTap;
  final Uint8List? bytes;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onTap!(),
        child: Card(
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: width ?? 135,
            height: height ?? 135,
            decoration: BoxDecoration(
              // image: DecorationImage(
              //     fit: BoxFit.cover, image: NetworkImage(imageUrl!)),
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
              // boxShadow: const [
              //   BoxShadow(
              //       color: Colors.black12,
              //       blurRadius: 3.0,
              //       spreadRadius: 2.0)
              // ]
            ),
            child: Center(
              child: bytes != null
                  ? Image.memory(
                      bytes!,
                      width: width ?? 135,
                      height: height ?? 135,
                      fit: BoxFit.fill,
                      errorBuilder: (_, __, ___) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.network(
                          "https://img.icons8.com/ios-filled/2x/no-image.png",
                          color: Colors.grey.shade200,
                        ),
                      ),
                    )
                  : Image.network(
                      imageUrl ?? "",
                      fit: BoxFit.fill,
                      width: width ?? 135,
                      height: height ?? 135,
                      errorBuilder: (_, __, ___) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.network(
                          "https://img.icons8.com/ios-filled/2x/no-image.png",
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageDialogWidget extends StatelessWidget {
  final String? imageUrl;
  final Function? onClose;
  final MyFileType fileType;
  final Widget? closeIcon;
  const ImageDialogWidget(
      {super.key,
      required this.imageUrl,
      required this.onClose,
      required this.fileType,
      this.closeIcon});

  @override
  Widget build(BuildContext context) {
    return AttachementItem(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return Container(
                  color: Colors.black45.withOpacity(0.5),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: ViewAttachementDialog(
                        onClose: onClose,
                        myFileType: fileType,
                        imgUrl: imageUrl),
                  ),
                );
              });
        },
        imageUrl: imageUrl);
  }
}
