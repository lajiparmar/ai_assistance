import 'package:my_assistance/app_import.dart';

class BottomBarController extends GetxController {
  List<Widget> pages=[
    const HomePage(),
    const AiAssistancePage(),
    const HistoryPage(),
    const SizedBox(),
  ];
  var currentIndex = 0.obs;

  void changeTab(int index) {
    currentIndex.value = index;
  }
}