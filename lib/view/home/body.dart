part of '../../utils/import-path/app_import_path.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        
        appBar:const CustomAppBar(),
        body: TabBarView(children: [
          Container(color: Colors.red,),
          Container(color: Colors.indigo,),
        ]),
        drawer:const Drawer(),
      ),
    );
  }
}
