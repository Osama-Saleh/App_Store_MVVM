part of '../../utils/import-path/app_import_path.dart';

class PageMyApp extends StatelessWidget {
  const PageMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerDB controllerDB = Provider.of<ControllerDB>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLangKey.myApps.tr()),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: controllerDB.fetchDataFromDB,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 0.12.sh,
                    child: Row(
                      children: [
                        Container(
                          width: 0.3.sw,
                          padding: EdgeInsets.all(10.r),
                          child: CustomNetworkImage(
                              imageUrl: snapshot.data![index].image ??
                                  AppMedia.notFoundImage),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snapshot.data![index].nameApp ?? '',
                                style: AppTextTheme.tLarge(context),
                              ),
                              Row(
                                children: [
                                  Text(
                                    snapshot.data![index].type ?? '',
                                    style: AppTextTheme.tLarge(context),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: AppDime.l.w,
                                    color: AppColor.star,
                                  ),
                                ],
                              ),
                              Text.rich(TextSpan(
                                text: snapshot.data![index].size ?? '',
                                style: DefaultTextStyle.of(context).style,
                                children: [
                                  const TextSpan(text: ' '),
                                  TextSpan(
                                      text: AppLangKey.megabyte.tr(),
                                      style: AppTextTheme.bMedium(context)
                                          ?.copyWith(color: AppColor.bgRed))
                                ],
                              )),
                            ],
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            controllerDB.unInstallApp(snapshot.data![index]);
                          },
                          icon: Icon(
                            Icons.delete,
                            size: 50.r,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 0.03.sh,
                    ),
                itemCount: snapshot.data!.length);
          } else {
            return const ErrorText(title: AppLangKey.errorInitFirebase);
          }
        },
      ),
    );
  }
}
