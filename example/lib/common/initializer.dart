import 'dart:async';
import 'package:common_jds_flutter_example/common/code_highlighter.dart';
import 'package:flutter/widgets.dart';

class Initializer {
  static const Initializer instance = Initializer._internal();
  factory Initializer() => instance;
  const Initializer._internal();

  void init(VoidCallback runApp) {

    runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();
      FlutterError.onError = (details) {
        FlutterError.dumpErrorToConsole(details);
        debugPrint(details.stack.toString());
      };
      await CodeHighlighter.instance.initialize();
      runApp();
    }, (error, stack) {
      debugPrint('runZonedGuarded: ${error.toString()}');
    });
  }
}
