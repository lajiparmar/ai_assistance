import 'package:my_assistance/app_import.dart';
import 'package:my_assistance/module/chat/bindings/chat_bindings.dart';
import 'package:my_assistance/module/history/bindings/previous_chat_binding.dart';
import 'package:my_assistance/module/history/pages/previous_chat/previous_chat_page.dart';

class RouteConstant {
  static const String initial = '/';
  static const String chatPage = '/chatPage';
  static const String previousChatPage = '/previousChatPage';
  static const String aiAssistance = '/aiAssistancePage';
  static const String historyPage = '/historyPage';
  static const String historySearchPage = '/historySearchPage';
  static const String dashboardPage = '/dashboardPage';
}

mixin AppRouter {
  static final List<GetPage> pages = [
    GetPage(name: RouteConstant.initial, page: () => const SplashPage()),
    GetPage(
        name: RouteConstant.dashboardPage, page: () => const DashBoardPage()),
    GetPage(
        name: RouteConstant.chatPage,
        page: () => const ChatPage(),
        binding: ChatBinding()),
    GetPage(
        name: RouteConstant.previousChatPage,
        page: () => const PreviousChatPage(),
        binding: PreviousChatBinding()),
    GetPage(
        name: RouteConstant.aiAssistance,
        page: () => const AiAssistancePage(),
        binding: AiAssistanceBinding()),
    GetPage(
        name: RouteConstant.historyPage,
        page: () => const HistoryPage(),
        binding: HistoryBinding()),
    GetPage(
        name: RouteConstant.historySearchPage,
        page: () => const HistorySearchPage(),
        binding: HistorySearchBinding()),
  ];
}
