import 'package:my_assistance/app_import.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>BottomBarController());
    Get.lazyPut(()=>ThemeController());
    Get.lazyPut(()=>HistoryController());
    Get.lazyPut(()=>AiAssistantController());
  }
}