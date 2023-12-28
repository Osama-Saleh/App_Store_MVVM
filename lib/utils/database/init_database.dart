part of '../import-path/app_import_path.dart';

class ConnectionDB {
  Future<Database> initDB() async {
    /// [directory] path
    Directory directory = await dir.getApplicationDocumentsDirectory();
    var databasesPath = await getDatabasesPath();

    log('directory: ${databasesPath}', name: 'init-DB');

    /// [pathDB] e.g = user/mohamed/appStore/Apps.db
    String pathDB = path.join(databasesPath, 'Apps.db');

    return openDatabase(
      pathDB,
      version: 1,
      onCreate: (db, version) async {
        // create table
        await db.execute(
          'CREATE TABLE ${TableApps.nameTable} ('
          '${TableApps.colId} TEXT PRIMARY KEY, '
          '${TableApps.colNameApp} TEXT, '
          '${TableApps.colImage} TEXT, '
          '${TableApps.colType} TEXT, '
          '${TableApps.colRating} TEXT, '
          '${TableApps.colSize} TEXT, '
          '${TableApps.colTimeStamp} TEXT '
          ')',
        );

        /// create another table
        // await db.execute(
        //   'CREATE TABLE ${TableApps.nameTable} ('
        //   '${TableApps.colId} TEXT PRIMARY KEY, '
        //   '${TableApps.colNameApp} TEXT, '
        //   '${TableApps.colImage} TEXT, '
        //   '${TableApps.colType} TEXT, '
        //   '${TableApps.colRating} TEXT, '
        //   '${TableApps.colSize} TEXT, '
        //   '${TableApps.colTimeStamp} TEXT '
        //   ')',
        // );
      },
    );
  }
}