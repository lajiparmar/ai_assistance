import 'package:my_assistance/app_import.dart';
class AiAssistanceBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AiAssistantController());
  }
}
