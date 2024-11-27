// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web/web.dart' as web;

import 'otp_pin_plus_keyboard_platform_interface.dart';

/// A web implementation of the OtpPinPlusKeyboardPlatform of the OtpPinPlusKeyboard plugin.
class OtpPinPlusKeyboardWeb extends OtpPinPlusKeyboardPlatform {
  /// Constructs a OtpPinPlusKeyboardWeb
  OtpPinPlusKeyboardWeb();

  static void registerWith(Registrar registrar) {
    OtpPinPlusKeyboardPlatform.instance = OtpPinPlusKeyboardWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = web.window.navigator.userAgent;
    return version;
  }
}
