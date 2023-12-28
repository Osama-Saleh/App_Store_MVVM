part of '../utils/import-path/app_import_path.dart';

class ControllerDB extends ChangeNotifier {
  String? titleBtn = AppLangKey.install;

  /// [manageInstallation]
  Future<bool> manageInstallation(
    ModelDBApp data,
  ) async {
    if (await BuildQueryApp.db.getAppById(data) == null) {
      // install
      return await installApp(data);
    } else {
      // uninstall
      return await unInstallApp(data);
    }
  }

  /// [installApp]
  ///
  /// return true when install
  ///
  /// return false when error install
  Future<bool> installApp(ModelDBApp data) async {
    if (await BuildQueryApp.db.insertApp(data) > 0) {
      // ✅
      titleBtn = AppLangKey.uninstall;
      notifyListeners();
      return true;
    } else {
      // ❌
      return false;
    }
  }

  /// [unInstallApp]
  ///
  /// return true when uninstall
  ///
  /// return false when error uninstall
  Future<bool> unInstallApp(ModelDBApp data) async {
    if (await BuildQueryApp.db.deleteAppById(data) > 0) {
      // ✅
      titleBtn = AppLangKey.install;
      notifyListeners();
      return true;
    } else {
      // ❌
      return false;
    }
  }
  //check app is install or not
  Future<void> checkInDB(ModelDBApp data) async {
    if (await BuildQueryApp.db.getAppById(data) == null) {
      titleBtn = AppLangKey.install;
    } else {
      titleBtn = AppLangKey.uninstall;
    }
    notifyListeners();
  }

  /// covert object details for ModeDBApp
  ModelDBApp convertTypeDB(dynamic data) {
    return ModelDBApp(
      id: data.id,
      nameApp: data.nameApp,
      image: data.image,
      type: data.type,
      size: data.size,
      rating: data.rating,
      timeStamp: DateTime.now().microsecondsSinceEpoch.toString(),
    );
  }

  /// storage all app in database
  // List<ModelDBApp>? dataList;

  /// [fetchDataFromDB] call database to get data as List<ModelDBApp>
  Future<List<ModelDBApp>> get fetchDataFromDB async {
    // dataList = await BuildQueryApp.db.getAppList;
    // notifyListeners();
    return await BuildQueryApp.db.getAppList;
  }
}