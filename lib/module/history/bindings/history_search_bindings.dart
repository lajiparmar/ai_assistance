import 'package:my_assistance/app_import.dart';

class HistorySearchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistorySearchController());
  }
}
