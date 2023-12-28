part of '../../../../utils/import-path/app_import_path.dart';

class SocialGridView extends StatelessWidget {
  const SocialGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ControllerApi.getSocial(context),
      builder: (context, snapshot) {
        snapshot.data;
        if (snapshot.connectionState == ConnectionState.done) {
          return GridView.builder(
            itemCount: snapshot.data?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemBuilder: (context, index) {
              return SocialCard(socialModel: snapshot.data![index],);
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
