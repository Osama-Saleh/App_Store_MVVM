part of '../import-path/app_import_path.dart';

class AppThemeChoose {
  ///[light]
  static ThemeData light(BuildContext context) {
    return ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColor.lightMain),
      tabBarTheme: TabBarTheme(labelColor: AppColor.tapBarText),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
      ),
      // textTheme: TextTheme(displayLarge:TextStyle(fontSize: 20) )
    );
  }

  ///[dark]
  static ThemeData dark(BuildContext context) {
    return ThemeData.dark(
      useMaterial3: true,
    ).copyWith(
      appBarTheme: const AppBarTheme(centerTitle: true),
    );
  }

  ///[isDark] Check choose theme return bool
  ///
  ///'true' = Dark
  ///
  ///'false' = light
  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  //check theme of devide system
  ///[brightnessSystemDevice] return false ~> light  true ~> dark
  static bool brightness() {
    Brightness brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark;
  }

  static String stateTheme(context) {
    return isDark(context) ? AppLangKey.dark : AppLangKey.light;
  }

  static Color themeColor(context) {
    return isDark(context) ? AppColor.darkMode : AppColor.lightMode;
  }
}
