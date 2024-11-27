#include "include/otp_pin_plus_keyboard/otp_pin_plus_keyboard_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "otp_pin_plus_keyboard_plugin.h"

void OtpPinPlusKeyboardPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  otp_pin_plus_keyboard::OtpPinPlusKeyboardPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
