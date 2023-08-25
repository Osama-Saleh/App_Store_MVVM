
import 'package:app_store/utils/import-path/app_import_path.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControllerTheme extends ChangeNotifier {
  //*=======================================
  //switch (light - dart)
  bool isDark = false;
  String themeName = AppLangKey.light;
  void changeTheme(bool value) {
    isDark = value;
    changeThemeName(value);
    setCurrentTheme(value);
    notifyListeners();
  }

  void changeThemeName(bool value) {
    themeName = value == true ? AppLangKey.dark : AppLangKey.light;
  }

  //*=======================================
  // theme of device
  ThemeMode get themeMode => isDark ? ThemeMode.dark : ThemeMode.light;
  //*=======================================
  //*save local  save theme in key value
  Future<void> setCurrentTheme(bool value) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('kCurrentTheme', value);
  }

  //* get theme from key value
  Future<bool> getCurrentTheme() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    isDark =
        preferences.getBool('kCurrentTheme') ?? AppThemeChoose.brightness();
    changeThemeName(isDark);
    notifyListeners();
    return isDark;
  }

  //*=======================================
  //*=======================================
  void onTapTerms(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            PageWibView(title: AppLangKey.terms, url: ApiKey.termsUlr(context)),
      ),
    );
  }
  //*=======================================
  //*=======================================
  //*=======================================
}
