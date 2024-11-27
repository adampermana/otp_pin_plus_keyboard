import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'otp_pin_plus_keyboard_platform_interface.dart';

/// An implementation of [OtpPinPlusKeyboardPlatform] that uses method channels.
class MethodChannelOtpPinPlusKeyboard extends OtpPinPlusKeyboardPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('otp_pin_plus_keyboard');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
