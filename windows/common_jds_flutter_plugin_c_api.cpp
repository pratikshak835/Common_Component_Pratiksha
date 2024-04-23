#include "include/common_jds_flutter/common_jds_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "common_jds_flutter_plugin.h"

void CommonJdsFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  common_jds_flutter::CommonJdsFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
