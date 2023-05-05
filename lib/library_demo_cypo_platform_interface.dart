import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'library_demo_cypo_method_channel.dart';

abstract class LibraryDemoCypoPlatform extends PlatformInterface {
  /// Constructs a LibraryDemoCypoPlatform.
  LibraryDemoCypoPlatform() : super(token: _token);

  static final Object _token = Object();

  static LibraryDemoCypoPlatform _instance = MethodChannelLibraryDemoCypo();

  /// The default instance of [LibraryDemoCypoPlatform] to use.
  ///
  /// Defaults to [MethodChannelLibraryDemoCypo].
  static LibraryDemoCypoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LibraryDemoCypoPlatform] when
  /// they register themselves.
  static set instance(LibraryDemoCypoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
