import 'package:common_jds_flutter/common/app_colors.dart';
import 'package:common_jds_flutter/common/extensions.dart';
import 'package:common_jds_flutter/common/styles/dimens.dart';
import 'package:common_jds_flutter_example/common/code_highlighter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CodeHighLighterWidget extends StatelessWidget {
  const CodeHighLighterWidget({Key? key, required this.codeString})
      : super(key: key);
  final String codeString;

  @override
  Widget build(BuildContext context) {
    var codeSpan = CodeHighlighter.instance.highlighter?.highlight(codeString);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.FFE0E0E0),
              color: AppColors.white,
              borderRadius: Dimens.size12.borderRadius),
          width: double.maxFinite,
          padding: const EdgeInsets.all(Dimens.size16),
          child: Text.rich(
            codeSpan!,
            style: GoogleFonts.sourceCodePro(),
          ),
        ),
        Positioned(
            right: Dimens.size16,
            top: Dimens.size16,
            child: InkWell(
                onTap: () async {
                  await Clipboard.setData(ClipboardData(text: codeString));
                },
                child: const Tooltip(
                    message: 'Copy Code',
                    child: Icon(Icons.copy,
                        color: AppColors.kPrimaryColor, size: Dimens.size16)))),
      ],
    );
  }
}
