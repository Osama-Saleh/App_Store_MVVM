import 'package:app_store/utils/language/app_lang.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './utils/import-path/app_import_path.dart';

void main() async {
  // language
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (BuildContext context) {
        return EasyLocalization(
          supportedLocales: AppLanguageConfig.supportLocal,
          path: AppLanguageConfig.pathLang,
          fallbackLocale: AppLanguageConfig.enLocal,
          child: AppReStartApplication(child: const StartApp()),
        );
      },
    ),
  );
}


