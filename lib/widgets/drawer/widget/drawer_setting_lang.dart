import 'package:app_store/utils/import-path/app_import_path.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerSettingLanguage extends StatefulWidget {
  const DrawerSettingLanguage({super.key});

  @override
  State<DrawerSettingLanguage> createState() => _DrawerSettingLanguageState();
}

class _DrawerSettingLanguageState extends State<DrawerSettingLanguage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var pLang = Provider.of<ControllerLanguages>(context, listen: false);
      pLang.checkLang(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var pLang = Provider.of<ControllerLanguages>(context);
    return DropdownButton(
      value: pLang.lang,
      items: pLang.itemLanguage
          .map(
            (language) => DropdownMenuItem(
              value: language,
              child: Text(language.nameLang.tr()),
            ),
          )
          .toList(),
      onChanged: (value) {
        pLang.changeLang(context, lang: value ?? ChoiceLanguage.en);
      },
    );
  }
}
