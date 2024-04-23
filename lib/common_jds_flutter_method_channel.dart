import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'common_jds_flutter_platform_interface.dart';

/// An implementation of [CommonJdsFlutterPlatform] that uses method channels.
class MethodChannelCommonJdsFlutter extends CommonJdsFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('common_jds_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
