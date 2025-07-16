import 'package:my_assistance/app_import.dart';


class RouteConstant {
  static const String initial = '/';
  static const String chatPage = '/chatPage';
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
