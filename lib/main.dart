import 'package:app_store/utils/language/app_lang.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './utils/import-path/app_import_path.dart';

void main() async {
  // language
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales:AppLanguageConfig.supportLocal,
    path: AppLanguageConfig.pathLang,
     fallbackLocale: AppLanguageConfig.enLocal,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: const PageSplash(),
      builder: (context, child) {
        return MaterialApp(
          title: 'AppStore',
          debugShowCheckedModeBanner: false,
          // theme
          theme: AppThemeChoose.light(context),
          darkTheme: AppThemeChoose.dark(context),
          themeMode: ThemeMode.light,
          // language
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: child,
        );
      },
    );
  }
}
