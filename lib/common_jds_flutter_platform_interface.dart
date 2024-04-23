import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'common_jds_flutter_method_channel.dart';

abstract class CommonJdsFlutterPlatform extends PlatformInterface {
  /// Constructs a CommonJdsFlutterPlatform.
  CommonJdsFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static CommonJdsFlutterPlatform _instance = MethodChannelCommonJdsFlutter();

  /// The default instance of [CommonJdsFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelCommonJdsFlutter].
  static CommonJdsFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CommonJdsFlutterPlatform] when
  /// they register themselves.
  static set instance(CommonJdsFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
