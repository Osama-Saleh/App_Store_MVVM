part of '../import-path/app_import_path.dart';
class BuildQueryApp {
  // Constructor private
  BuildQueryApp._();

  /// create object only for DB
  static final BuildQueryApp db = BuildQueryApp._();

  /// create object from Database not initial value
  Database? database;

  /// [hasDB] check the DataBase
  Future<Database> get hasDB async =>
      database ??= await ConnectionDB().initDB();

  /// Create Read  Update Delete  `CRUD`

  /// create [insertApp] return -1 not add data in DB
  /// add application on DB return number create row
  Future<int> insertApp(ModelDBApp data) async {
    return hasDB
        .then((Database dbConnection) =>
            dbConnection.insert(TableApps.nameTable, data.toJson()))
        .onError((error, stackTrace) {
      log(AppLangKey.errorDownloading.tr(),
          name: 'insertApp', error: error.toString());
      return -1;
    });
  }

  /// [deleteAppById] delete app by id return int number row
  ///
  /// when error return -1
  Future<int> deleteAppById(ModelDBApp model) async {
    return hasDB
        .then((dbConnection) => dbConnection.delete(TableApps.nameTable,
            where: '${TableApps.colId} = ?', whereArgs: [model.id]))
        .onError((error, stackTrace) {
      log(AppLangKey.errorUninstalling.tr(),
          name: 'deleteAppById', error: error.toString());
      return -1;
    });
  }

  /// [getListApps] return  list from ModelAppDB
  ///
  /// when error return list empty form type ModelAppDB
  Future<List<ModelDBApp>> get getAppList async {
    return hasDB
        .then((dbConnection) => dbConnection
            .query(TableApps.nameTable,
                orderBy: '${TableApps.colTimeStamp} desc')
            .then((listData) => listData.isNotEmpty
                ? listData.map((app) => ModelDBApp.fromJson(json: app)).toList()
                : <ModelDBApp>[]))
        .onError((error, stackTrace) {
      log('error get all app', name: 'getAppList', error: error.toString());
      return <ModelDBApp>[];
    });
  }

  /// [getAppById] return data app
  ///
  ///  return null is not save in dataBase
  Future<ModelDBApp?> getAppById(ModelDBApp model) async {
    return hasDB
        .then((dbConnection) => dbConnection.query(
              TableApps.nameTable,
              where: '${TableApps.colId} = ?',
              whereArgs: [model.id],
            ).then((listData) => listData.isNotEmpty
                ? ModelDBApp.fromJson(json: listData.first)
                : null))
        .onError((error, stackTrace) {
      log('error get app by id ',
          name: 'getAppById', error: error.toString());
      return null;
    });
  }

  ///  [updateApp] update app data  by Id
  ///
  /// return -1 when error update
  Future<int> updateAppById(ModelDBApp model) async {
    return hasDB
        .then((dbConnection) => dbConnection.update(
              TableApps.nameTable,
              model.toJson(),
              where: '${TableApps.colId} = ?',
              whereArgs: [model.id],
            ))
        .onError((error, stackTrace) {
      log('error update app',
          name: 'updateAppById', error: error.toString());
      return -1;
    });
  }
}