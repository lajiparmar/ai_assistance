import 'package:my_assistance/app_import.dart';
class PreviousChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
  }
}
