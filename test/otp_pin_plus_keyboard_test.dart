import 'package:flutter_test/flutter_test.dart';
import 'package:otp_pin_plus_keyboard/otp_pin_plus_keyboard.dart';
import 'package:otp_pin_plus_keyboard/otp_pin_plus_keyboard_platform_interface.dart';
import 'package:otp_pin_plus_keyboard/otp_pin_plus_keyboard_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOtpPinPlusKeyboardPlatform
    with MockPlatformInterfaceMixin
    implements OtpPinPlusKeyboardPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OtpPinPlusKeyboardPlatform initialPlatform = OtpPinPlusKeyboardPlatform.instance;

  test('$MethodChannelOtpPinPlusKeyboard is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOtpPinPlusKeyboard>());
  });

  test('getPlatformVersion', () async {
    OtpPinPlusKeyboard otpPinPlusKeyboardPlugin = OtpPinPlusKeyboard();
    MockOtpPinPlusKeyboardPlatform fakePlatform = MockOtpPinPlusKeyboardPlatform();
    OtpPinPlusKeyboardPlatform.instance = fakePlatform;

    expect(await otpPinPlusKeyboardPlugin.getPlatformVersion(), '42');
  });
}
