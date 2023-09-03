part of '../utils/import-path/app_import_path.dart';

class ApiKey {
  static String termsUlr(BuildContext context) =>
      'https://gifted-gray-loincloth.cyclic.app/html/${AppThemeChoose.stateTheme(context)}/terms';

  // End Point
  static const String baseApi =
      'https://gifted-gray-loincloth.cyclic.app//api/';
  static const String apiSocial  = '/social';
  static const String apiPremium = '/premium';
}
