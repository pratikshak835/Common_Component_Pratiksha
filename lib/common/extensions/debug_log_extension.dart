import 'package:flutter/material.dart';

extension DebugLog on String {
  debugLog() {
    return debugPrint(
      '\n******************************* DebugLog *******************************\n'
          ' $this'
          '\n******************************* DebugLog *******************************\n',
      wrapWidth: 1024,
    );
  }
}