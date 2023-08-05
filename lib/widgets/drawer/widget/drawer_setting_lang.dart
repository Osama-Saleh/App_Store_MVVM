import 'package:app_store/utils/import-path/app_import_path.dart';
import 'package:app_store/utils/language/app_lang.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DrawerSettingLanguage extends StatefulWidget {
  const DrawerSettingLanguage({super.key});

  @override
  State<DrawerSettingLanguage> createState() => _DrawerSettingLanguageState();
}

enum Language { english, arabic }
var lang = kEn;
class _DrawerSettingLanguageState extends State<DrawerSettingLanguage> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: lang,
      items: [
        DropdownMenuItem(
          value: kAr,
          child: Text(AppLangKey.arabic.tr()),
        ),
        DropdownMenuItem(
          value: kEn,
          child: Text(AppLangKey.english.tr()),
        ),
      ],
      onChanged: (value) {
        lang = value!;
        setState(() {
          
        });
      },
    );
  }
}
