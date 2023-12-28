part of '../import-path/app_import_path.dart';

class ModelDBApp {
  /// properties
  String? id;
  String? nameApp;
  String? image;
  String? type;
  String? size;
  String? rating;
  String? timeStamp;

  /// constructor
  ModelDBApp({
    this.id,
    this.nameApp,
    this.image,
    this.type,
    this.size,
    this.rating,
    this.timeStamp,
  });

  /// [ModelDBApp.fromJson] get app from DB
  ModelDBApp.fromJson({required Map<String, dynamic> json})
      : assert(json.isNotEmpty),
        id = json[TableApps.colId],
        nameApp = json[TableApps.colNameApp],
        type = json[TableApps.colType],
        rating = json[TableApps.colRating],
        size = json[TableApps.colSize],
        image = json[TableApps.colImage],
        timeStamp = json[TableApps.colTimeStamp];

  /// [toJson] add  app to DB
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[TableApps.colId] = id;
    data[TableApps.colNameApp] = nameApp;
    data[TableApps.colType] = type;
    data[TableApps.colRating] = rating;
    data[TableApps.colSize] = size;
    data[TableApps.colImage] = image;
    data[TableApps.colTimeStamp] = timeStamp;

    return data;
  }
}
