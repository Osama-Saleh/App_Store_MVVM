part of '../../utils/import-path/app_import_path.dart';

class DetailsView extends StatefulWidget {
  final dynamic model;
  const DetailsView({super.key, required this.model});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ControllerDB>(context, listen: false).titleBtn;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ControllerDB controllerDB = Provider.of<ControllerDB>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.model.nameApp}'),
        actions: [
          OutlinedButton(
              onPressed: () async {
                if (await controllerDB.manageInstallation(
                    controllerDB.convertTypeDB(widget.model))) {
                  log('installed');
                } else {
                  log('Uninstalled');
                }
              },
              child: Text(controllerDB.titleBtn!.tr()))
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
            width: AppDime.fullScreen.sw,
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 0.03.sw),
              child: Column(
                children: [
                  DetailsHeader(model: widget.model),
                  Text(
                    widget.model.description ?? '',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  SizedBox(
                    height: 0.3.sh,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CustomNetworkImage(
                            imageUrl: widget.model.images![index]);
                      },
                      itemCount: widget.model.images!.length,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
