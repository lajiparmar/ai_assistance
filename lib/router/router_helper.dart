import 'package:my_assistance/app_import.dart';

mixin RouterHelper {
  static void gotoBack() => Get.back();

  static void gotoDashboardPage() => Get.offAllNamed(RouteConstant.dashboardPage);
  static void gotoChatPage() => Get.toNamed(RouteConstant.chatPage);
  static void gotoPreviousChatPage(ConversationModel model) => Get.toNamed(RouteConstant.previousChatPage,arguments: model);
  static void gotoAiAssistancePage() => Get.toNamed(RouteConstant.aiAssistance);
  static void gotoHistorySearchPage() =>
      Get.toNamed(RouteConstant.historySearchPage);
}
