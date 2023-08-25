part of '../../utils/import-path/app_import_path.dart';

class PageWibView extends StatefulWidget {
  const PageWibView({super.key, required this.title, required this.url});
  final String title;
  final String url;
  @override
  State<PageWibView> createState() => _PageWibViewState();
}

class _PageWibViewState extends State<PageWibView> {
  WebViewController controller = WebViewController();
  bool isLoading = true;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(widget.url))
        ..setBackgroundColor(AppThemeChoose.themeColor(context))
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (url) {
              isLoading = false;
              setState(() {});
            },
          ),
        );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title.tr()),
        ),
        body: isLoading == false
            ? WebViewWidget(controller: controller)
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}
