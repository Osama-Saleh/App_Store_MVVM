part of '../../../../utils/import-path/app_import_path.dart';

class SocialGridView extends StatelessWidget {
  const SocialGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return const SocialCard();
      },
    );
  }
}
