part of '../utils/import-path/app_import_path.dart';

class ControllerApi extends ChangeNotifier{
static  Future<List?> getSocial(BuildContext context) async {
    try {
      Uri url = Uri.parse(
          '${ApiKey.baseApi}${AppLanguageConfig.currentLanguage(context)}${ApiKey.apiSocial}');
      var res = await http.get(url);
      if (res.statusCode == 200) {
        // convert.jsonDecode(response.body);
        var response = convert.json.decode(res.body);
      return  response['social'].map((json)=>SocialModel.fromMap(json)).toList();
        // return SocialModel.fromMap(response).map((e)=>e).toList();
      }else{
        log(AppLangKey.errorFetchData.tr());
        return null;
      }
    } catch (error) {
      log('Error Fetch Data Social',
          name: 'Api Social', error: error.toString());
      return null;
    }
  }
}
