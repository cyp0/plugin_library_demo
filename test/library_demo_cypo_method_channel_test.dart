import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:library_demo_cypo/library_demo_cypo_method_channel.dart';

void main() {
  MethodChannelLibraryDemoCypo platform = MethodChannelLibraryDemoCypo();
  const MethodChannel channel = MethodChannel('library_demo_cypo');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
