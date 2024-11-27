import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:otp_pin_plus_keyboard/otp_pin_plus_keyboard_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelOtpPinPlusKeyboard platform = MethodChannelOtpPinPlusKeyboard();
  const MethodChannel channel = MethodChannel('otp_pin_plus_keyboard');

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
