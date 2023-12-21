part of '../../utils/import-path/app_import_path.dart';

class DetailsView extends StatefulWidget {
  final SocialModel socialModel;
  const DetailsView({super.key, required this.socialModel});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.socialModel.nameApp}'),
        actions: [OutlinedButton(onPressed: () {
          log('install');
        }, child: Text(AppLangKey.install.tr()))],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: AppDime.fullScreen.sw,
          child: Padding(
            padding:  EdgeInsetsDirectional.symmetric(horizontal: 0.03.sw),
            child: Column(
              children: [
                DetailsHeader(socialModel: widget.socialModel),
                Text(widget.socialModel.description??'',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(
                  height: 0.3.sh,
                  child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                          return CustomNetworkImage(imageUrl: widget.socialModel.images![index]);
                          },
                          itemCount: widget.socialModel.images!.length,
                          ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
