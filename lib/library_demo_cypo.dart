
import 'library_demo_cypo_platform_interface.dart';

class LibraryDemoCypo {
  Future<String?> getPlatformVersion() {
    return LibraryDemoCypoPlatform.instance.getPlatformVersion();
  }
}
