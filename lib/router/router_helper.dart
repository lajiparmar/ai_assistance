import 'package:get/get.dart';
import 'package:my_assistance/router/route.dart';

mixin RouterHelper {
  static void gotoBack() => Get.back();

  static void gotoDashboardPage() => Get.offAllNamed(RouteConstant.dashboardPage);
  static void gotoChatPage() => Get.toNamed(RouteConstant.chatPage);
  static void gotoAiAssistancePage() => Get.toNamed(RouteConstant.aiAssistance);
  static void gotoHistorySearchPage() =>
      Get.toNamed(RouteConstant.historySearchPage);
}
