part of '../../utils/import-path/app_import_path.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: TabBarView(children: [
          const SocialGridView(),
          Container(
            color: Colors.indigo,
          ),
        ]),
        drawer: const CustomDrawer(),
      ),
    );
  }
}




