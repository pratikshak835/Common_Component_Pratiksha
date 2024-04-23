import 'package:flutter_test/flutter_test.dart';
import 'package:common_jds_flutter/common_jds_flutter.dart';
import 'package:common_jds_flutter/common_jds_flutter_platform_interface.dart';
import 'package:common_jds_flutter/common_jds_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCommonJdsFlutterPlatform
    with MockPlatformInterfaceMixin
    implements CommonJdsFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CommonJdsFlutterPlatform initialPlatform = CommonJdsFlutterPlatform.instance;

  test('$MethodChannelCommonJdsFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCommonJdsFlutter>());
  });

  test('getPlatformVersion', () async {
    CommonJdsFlutter commonJdsFlutterPlugin = CommonJdsFlutter();
    MockCommonJdsFlutterPlatform fakePlatform = MockCommonJdsFlutterPlatform();
    CommonJdsFlutterPlatform.instance = fakePlatform;

    expect(await commonJdsFlutterPlugin.getPlatformVersion(), '42');
  });
}
