part of '../../../../utils/import-path/app_import_path.dart';

class PremiumTap extends StatelessWidget {
  const PremiumTap({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ControllerApi.getPremium(context),
      builder: (context, snapshot) => SingleChildScrollView(
        child: Column(
          children: [
            PremiumCardCategories(model:snapshot.data!.games,name: AppLangKey.games, ),
            PremiumCardCategories(model:snapshot.data!.artDesign,name: AppLangKey.artDesign,),
            PremiumCardCategories(model:snapshot.data!.education,name: AppLangKey.education,),
          ],
        ),
      ),
    );
  }
}
