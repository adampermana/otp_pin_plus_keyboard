#ifndef FLUTTER_PLUGIN_OTP_PIN_PLUS_KEYBOARD_PLUGIN_H_
#define FLUTTER_PLUGIN_OTP_PIN_PLUS_KEYBOARD_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace otp_pin_plus_keyboard {

class OtpPinPlusKeyboardPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  OtpPinPlusKeyboardPlugin();

  virtual ~OtpPinPlusKeyboardPlugin();

  // Disallow copy and assign.
  OtpPinPlusKeyboardPlugin(const OtpPinPlusKeyboardPlugin&) = delete;
  OtpPinPlusKeyboardPlugin& operator=(const OtpPinPlusKeyboardPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace otp_pin_plus_keyboard

#endif  // FLUTTER_PLUGIN_OTP_PIN_PLUS_KEYBOARD_PLUGIN_H_
