import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'library_demo_cypo_platform_interface.dart';

/// An implementation of [LibraryDemoCypoPlatform] that uses method channels.
class MethodChannelLibraryDemoCypo extends LibraryDemoCypoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('library_demo_cypo');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
