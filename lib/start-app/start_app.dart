part of '../utils/import-path/app_import_path.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:kProviderList,
      builder: (context, child) => ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const AppMaterial() ;
        },
      ),
    );
  }
}