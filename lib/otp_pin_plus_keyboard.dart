
import 'otp_pin_plus_keyboard_platform_interface.dart';

class OtpPinPlusKeyboard {
  Future<String?> getPlatformVersion() {
    return OtpPinPlusKeyboardPlatform.instance.getPlatformVersion();
  }
}
