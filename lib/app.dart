import 'package:my_assistance/app_import.dart';

@immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstant.initial,
      getPages: AppRouter.pages,
      initialBinding: InitialBindings(), // Global controllers
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
