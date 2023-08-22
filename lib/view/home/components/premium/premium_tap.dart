part of '../../../../utils/import-path/app_import_path.dart';

class PremiumTap extends StatelessWidget {
  const PremiumTap({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          
          PremiumCardCategories(),
          PremiumCardCategories(),
          PremiumCardCategories(),
          PremiumCardCategories(),
        ],
      ),
    );
  }
}
