import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:common_jds_flutter/common_jds_flutter_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelCommonJdsFlutter platform = MethodChannelCommonJdsFlutter();
  const MethodChannel channel = MethodChannel('common_jds_flutter');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
