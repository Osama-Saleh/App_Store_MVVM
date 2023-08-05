import 'package:app_store/utils/import-path/app_import_path.dart';
import 'package:app_store/utils/language/app_lang.dart';
import 'package:app_store/widgets/drawer/widget/drawer_setting_lang.dart';
import 'package:app_store/widgets/drawer/widget/drawet_setting_design.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DrawerSetting extends StatefulWidget {
  const DrawerSetting({super.key});

  @override
  State<DrawerSetting> createState() => _DrawerSettingState();
}

bool isTheme = false;

class _DrawerSettingState extends State<DrawerSetting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerSettingDesign(
          leadingIcon: AppMedia.myApp,
          title: AppLangKey.myApps.tr(),
        ),
        DrawerSettingDesign(
          leadingIcon: AppMedia.translate,
          title: AppLangKey.language.tr(),
          trailing: DrawerSettingLanguage(),
        ),
        DrawerSettingDesign(
          leadingIcon: AppMedia.theme,
          title: AppLangKey.themes.tr(),
          trailing: Switch(
            value: isTheme,
            onChanged: (value) {
              isTheme = value;
              setState(() {});
            },
          ),
        ),
        DrawerSettingDesign(
          leadingIcon: AppMedia.terms,
          title: AppLangKey.terms.tr(),
        ),
        DrawerSettingDesign(
          leadingIcon: AppMedia.logout,
          title: AppLangKey.logout.tr(),
        ),
      ],
    );
  }
}
