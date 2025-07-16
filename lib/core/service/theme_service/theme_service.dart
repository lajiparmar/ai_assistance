import 'package:my_assistance/app_import.dart';

mixin ThemeHelper {
  // Define Colors
  static const Color primaryColor = Color(0xFF6972F0);
  static const Color secondaryColor = Color(0xFFF4F4F4);
  static const Color lightBackgroundColor = Colors.white;
  static const Color darkBackgroundColor = Color(0xFF121212);
  static const Color lightTextColor = Colors.black;
  static const Color darkTextColor = Colors.white;

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, // Enable Material 3
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    fontFamily: AssetConstant.defaultFontFamily,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white, // Icon & Text color
      elevation: 4,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: lightTextColor),
      bodyLarge: TextStyle(fontSize: 18, color: lightTextColor),
      bodyMedium: TextStyle(fontSize: 16, color: lightTextColor),
      bodySmall: TextStyle(fontSize: 14, color: Colors.grey),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: ColorConstant.colorWhite),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    tabBarTheme: const TabBarThemeData(
      labelColor: primaryColor,
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.label,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: secondaryColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: darkBackgroundColor,
      foregroundColor: Colors.white,
      elevation: 4,
    ),
    fontFamily: AssetConstant.defaultFontFamily,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: darkTextColor),
      bodyLarge: TextStyle(fontSize: 18, color: darkTextColor),
      bodyMedium: TextStyle(fontSize: 16, color: darkTextColor),
      bodySmall: TextStyle(fontSize: 14, color: Colors.grey),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: secondaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: ColorConstant.colorBlack),
    tabBarTheme: const TabBarThemeData(
      labelColor: secondaryColor,
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.label,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF222222), // Dark input field background
      border: OutlineInputBorder(),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: secondaryColor,
    ),
  );
}
