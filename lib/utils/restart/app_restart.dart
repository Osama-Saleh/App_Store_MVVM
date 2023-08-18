part of '../import-path/app_import_path.dart';

class AppReStartApplication extends StatefulWidget {
  AppReStartApplication({super.key, required this.child});

  final Widget child;

  ///[reBuild] access to private method
  static void reBuild(BuildContext context) => context
      .findAncestorStateOfType<_AppReStartApplicationState>()
      ?.restartApp();

  @override
  State<AppReStartApplication> createState() => _AppReStartApplicationState();
}

class _AppReStartApplicationState extends State<AppReStartApplication> {
  Key key = UniqueKey();

  ///[restartApp] Change Key
  void restartApp() {
    key = UniqueKey();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: key, child: widget.child);
  }
}
