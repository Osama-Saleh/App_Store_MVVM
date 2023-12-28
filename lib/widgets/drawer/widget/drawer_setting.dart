import 'package:app_store/controller/c_theme.dart';
import 'package:app_store/utils/import-path/app_import_path.dart';
import 'package:app_store/widgets/drawer/widget/drawer_setting_lang.dart';
import 'package:app_store/widgets/drawer/widget/drawet_setting_design.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerSetting extends StatelessWidget {
  const DrawerSetting({super.key});

  @override
  Widget build(BuildContext context) {
    var controllerTheme = Provider.of<ControllerTheme>(context);
    return Column(
      children: [
        DrawerSettingDesign(
          leadingIcon: AppMedia.myApp,
          title: AppLangKey.myApps.tr(),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PageMyApp(),))
        ),
        DrawerSettingDesign(
          leadingIcon: AppMedia.translate,
          title: AppLangKey.language.tr(),
          trailing: const DrawerSettingLanguage(),
        ),
        DrawerSettingDesign(
          leadingIcon: AppMedia.theme,
          title: controllerTheme.themeName.tr(),
          trailing: Switch(
              value: controllerTheme.isDark,
              onChanged: controllerTheme.changeTheme),
        ),
        DrawerSettingDesign(
          leadingIcon: AppMedia.terms,
          title: AppLangKey.terms.tr(),
          onTap: () => controllerTheme.onTapTerms(context),
        ),
        DrawerSettingDesign(
          leadingIcon: AppMedia.logout,
          title: AppLangKey.logout.tr(),
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return const LogOutDialog();
              },
            );
          },
        ),
      ],
    );
  }
}


