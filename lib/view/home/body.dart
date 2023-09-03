part of '../../utils/import-path/app_import_path.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  
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
