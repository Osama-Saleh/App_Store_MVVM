import 'package:app_store/firebase_options.dart';
import 'package:app_store/utils/language/app_lang.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './utils/import-path/app_import_path.dart';

void main() async {
  // language
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    EasyLocalization.ensureInitialized(),
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
  ]);
//   await EasyLocalization.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
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
