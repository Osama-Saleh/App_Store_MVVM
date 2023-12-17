part of  '../../utils/import-path/app_import_path.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, AppRoutes.wrapper);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image(
        image: const AssetImage(AppMedia.appStore),
        width: MediaQuery.of(context).size.width / AppDime.xs,
      )),
    );
  }
}
