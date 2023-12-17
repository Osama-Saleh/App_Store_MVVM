part of '../import-path/app_import_path.dart';
class AppRoutes {
  static const String pageSplash = 'PageSplash';
  static const String pageLogin = 'LoginView';
  static const String forgetView = 'ForgetView';
  static const String registerView = 'RegisterView';
  static const String connectionFirebase = 'ConnectionFirebase';
  static const String wrapper = 'Wrapper';

  static Map<String, Widget Function(BuildContext)> routes =  <String, WidgetBuilder>{
    pageSplash: (context) => const PageSplash(),
    pageLogin: (context) => const LoginView(),
    forgetView: (context) => const ForgetView(),
    registerView: (context) => const RegisterView(),
    connectionFirebase: (context) => const ConnectionFirebase(),
    wrapper: (context) => const Wrapper(),
  };
}