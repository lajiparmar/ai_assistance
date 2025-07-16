import 'package:my_assistance/app_import.dart';

class ThemeController extends GetxController {
  ThemeMode themeMode = ThemeMode.system;
  RxBool isDark = false.obs;
  @override
  void onInit() {
    isDark.value = SharedPrefsService.getBool(SharedConstant.isDark);
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
    super.onInit();
  }

  void toggleTheme() {
    isDark.value = !isDark.value;
    SharedPrefsService.setBool(SharedConstant.isDark, isDark.value);
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }
}
