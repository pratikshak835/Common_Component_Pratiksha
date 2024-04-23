import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:common_jds_flutter_example/common/strings.dart';
import 'package:common_jds_flutter/widgets/custom_text/custom_text.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? message;

  const CustomErrorWidget({
    Key? key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          kDebugMode ?    message ?? Strings.somethingWentWrong : Strings.somethingWentWrong,
        ),
      ),
    );
  }
}

class CenteredErrorWidget extends StatelessWidget {
  final String? errorMessage;
  const CenteredErrorWidget({Key? key, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text:errorMessage ?? Strings.somethingWrong)
    );
  }
}
