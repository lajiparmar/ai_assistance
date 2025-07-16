import 'package:my_assistance/app_import.dart';

class DashBoardPage extends GetView<BottomBarController> {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: controller.pages[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorConstant.colorWhite,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: AppImage(image: AssetConstant.icChat),
                label: StringConstant.chat),
            BottomNavigationBarItem(
                icon: AppImage(image: AssetConstant.icMore),
                label: StringConstant.aiAssistants),
            BottomNavigationBarItem(
                icon: AppImage(image: AssetConstant.icClock),
                label: StringConstant.history),
            BottomNavigationBarItem(
                icon: AppImage(image: AssetConstant.icUser),
                label: StringConstant.account),
          ],
          onTap: controller.changeTab,
        ),
      );
    });
  }
}
