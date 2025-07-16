import 'package:my_assistance/app_import.dart';

class HistoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryController());
  }
}
