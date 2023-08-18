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

  ///[isDart] Check choose theme return bool
  ///
  ///'true' = Dark
  ///
  ///'false' = light
  static bool isDart(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  //check theme of devide system
  ///[brightnessSystemDevice] return false ~> light  true ~> dark
 static bool brightness() {
    Brightness brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark;
  }
}
