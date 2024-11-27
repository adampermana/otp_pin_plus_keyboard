import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'otp_pin_plus_keyboard_method_channel.dart';

abstract class OtpPinPlusKeyboardPlatform extends PlatformInterface {
  /// Constructs a OtpPinPlusKeyboardPlatform.
  OtpPinPlusKeyboardPlatform() : super(token: _token);

  static final Object _token = Object();

  static OtpPinPlusKeyboardPlatform _instance = MethodChannelOtpPinPlusKeyboard();

  /// The default instance of [OtpPinPlusKeyboardPlatform] to use.
  ///
  /// Defaults to [MethodChannelOtpPinPlusKeyboard].
  static OtpPinPlusKeyboardPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OtpPinPlusKeyboardPlatform] when
  /// they register themselves.
  static set instance(OtpPinPlusKeyboardPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
