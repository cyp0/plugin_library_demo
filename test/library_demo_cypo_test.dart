import 'package:flutter_test/flutter_test.dart';
import 'package:library_demo_cypo/library_demo_cypo.dart';
import 'package:library_demo_cypo/library_demo_cypo_platform_interface.dart';
import 'package:library_demo_cypo/library_demo_cypo_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLibraryDemoCypoPlatform
    with MockPlatformInterfaceMixin
    implements LibraryDemoCypoPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LibraryDemoCypoPlatform initialPlatform = LibraryDemoCypoPlatform.instance;

  test('$MethodChannelLibraryDemoCypo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLibraryDemoCypo>());
  });

  test('getPlatformVersion', () async {
    LibraryDemoCypo libraryDemoCypoPlugin = LibraryDemoCypo();
    MockLibraryDemoCypoPlatform fakePlatform = MockLibraryDemoCypoPlatform();
    LibraryDemoCypoPlatform.instance = fakePlatform;

    expect(await libraryDemoCypoPlugin.getPlatformVersion(), '42');
  });
}
