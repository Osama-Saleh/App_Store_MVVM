part of '../../utils/import-path/app_import_path.dart';

class DetailsView extends StatefulWidget {
  final dynamic model;
  const DetailsView({super.key, required this.model});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.model.nameApp}'),
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
                DetailsHeader(model: widget.model),
                Text(widget.model.description??'',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(
                  height: 0.3.sh,
                  child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                          return CustomNetworkImage(imageUrl: widget.model.images![index]);
                          },
                          itemCount: widget.model.images!.length,
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
