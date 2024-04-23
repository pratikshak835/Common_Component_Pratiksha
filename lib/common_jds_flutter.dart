
import 'common_jds_flutter_platform_interface.dart';

class CommonJdsFlutter {
  Future<String?> getPlatformVersion() {
    return CommonJdsFlutterPlatform.instance.getPlatformVersion();
  }
}
