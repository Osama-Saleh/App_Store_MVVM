part of '../utils/import-path/app_import_path.dart';
class AppMaterial extends StatefulWidget {
  const AppMaterial({super.key});

  @override
  State<AppMaterial> createState() => _AppMaterialState();
}

class _AppMaterialState extends State<AppMaterial> {
   @override
  void initState() {
  ControllerTheme pTheme =  Provider.of<ControllerTheme>(context,listen: false);
    pTheme.getCurrentTheme();  
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ControllerTheme  pTheme = Provider.of<ControllerTheme>(context);
    return MaterialApp(
            title: 'AppStore',
            debugShowCheckedModeBanner: false,
            // theme
            theme: AppThemeChoose.light(context),
            darkTheme:  AppThemeChoose.dark(context),
            themeMode:  pTheme.themeMode,
            // language
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home:const PageSplash(),
          );
  }
}