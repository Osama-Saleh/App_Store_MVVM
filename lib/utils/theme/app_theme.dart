part of '../import-path/app_import_path.dart';

class AppThemeChoose{

  ///[light]
  static ThemeData light(BuildContext context){
    return ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColor.lightMain),
      tabBarTheme: TabBarTheme(labelColor: AppColor.tapBarText),
      appBarTheme:const AppBarTheme(centerTitle: true,),
      // textTheme: TextTheme(displayLarge:TextStyle(fontSize: 20) )
      );
  }
  ///[dark]
static ThemeData dark(BuildContext context){
    return ThemeData.dark(useMaterial3: true,).copyWith(
      appBarTheme:const AppBarTheme(centerTitle: true),
    );
  }
}