part of '../../utils/import-path/app_import_path.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: TabBarView(physics: NeverScrollableScrollPhysics( ), children: [
          SocialGridView(),
          PremiumTap(),
        ]),
        drawer: CustomDrawer(),
      ),
    );
  }
}
