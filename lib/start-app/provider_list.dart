import 'package:app_store/controller/c_theme.dart';
import 'package:app_store/utils/import-path/app_import_path.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> kProviderList =[
  //theme 
  ChangeNotifierProvider<ControllerTheme>(
          create: (_) => ControllerTheme(),
        ),
        // language
  ChangeNotifierProvider<ControllerLanguages>(
          create: (_) => ControllerLanguages(),
        ),
];